package com.stori.security;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.filter.OncePerRequestFilter;

import com.stori.service.UserDetailsServiceImpl;

/* doFilterInternal method will do:
 * 	get JWT token from header
 * 	validate JWT
 * 	parse username from validated JWT
 * 	load data from users table, then build an authentication object
 * 	set the authentication object to Security Context */

public class JwtAuthTokenFilter extends OncePerRequestFilter {
 
    @Autowired
    private JwtProvider tokenProvider;
 
    @Autowired
    private UserDetailsServiceImpl userDetailsService;
 
    private static final Logger logger = LoggerFactory.getLogger(JwtAuthTokenFilter.class);
 
    @Override
    protected void doFilterInternal(HttpServletRequest request, 
                    HttpServletResponse response, 
                    FilterChain filterChain) 
                        throws ServletException, IOException {
        try {
        	/* JWT authentication -> User is authenticated for every request */
            String jwt = getJwt(request);
            if (jwt!=null && tokenProvider.validateJwtToken(jwt)) {
                String username = tokenProvider.getUserNameFromJwtToken(jwt);
 
                UserDetails userDetails = userDetailsService.loadUserByUsername(username);
                
                // Create fully populated authentication object
                UsernamePasswordAuthenticationToken authentication 
                    = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
               
                // Make the authentication object request-specific
                authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
 
                //Store the authentication object in the SecurityContext 
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
        } catch (Exception e) {
            logger.error("Can NOT set user authentication -> Message: {}", e);
        }
 
        filterChain.doFilter(request, response);
    }
 
    private String getJwt(HttpServletRequest request) {
        String authHeader = request.getHeader("Authorization");
          
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
          return authHeader.replace("Bearer ","");
        }
 
        return null;
    }
}
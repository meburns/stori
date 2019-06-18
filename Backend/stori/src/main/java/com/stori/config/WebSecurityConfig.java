package com.stori.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Bean
	public BCryptPasswordEncoder getEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public TokenAuthenticationFilter jwtAuthenticationTokenFilter() throws Exception {
		return new TokenAuthenticationFilter();
	}

	@Autowired
	private AuthenticationSuccessHandler authenticationSuccessHandler;

	@Autowired
	private AuthenticationFailureHandler authenticationFailureHandler;

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http
			.addFilterBefore(jwtAuthenticationTokenFilter(), BasicAuthenticationFilter.class)
				.authorizeRequests()
				//.antMatchers("/**").permitAll()
				//.antMatchers("/users/login").permitAll()	
				.antMatchers("/users/create").permitAll()
				.anyRequest().authenticated()
				.and()
			.formLogin()
				.successHandler(authenticationSuccessHandler)
				.failureHandler(authenticationFailureHandler)
				.and()
			.csrf().disable();
	}

	//	@Autowired
	//	DataSource datasource;
	//	
	//	@Autowired
	//    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	//        auth
	//            .inMemoryAuthentication()
	//                .withUser("kee").password("{noop}123456").roles("USER");
	//    }
	//	

	//	@Autowired
	//	public void configureGlobal(AuthenticationManagerBuilder auth) 
	//			throws Exception {
	//		auth.jdbcAuthentication().dataSource(datasource)
	//		.usersByUsernameQuery("select username as username, password, true"
	//				+ " from users where username=?")
	//		.authoritiesByUsernameQuery("select username as username, role"
	//				+ " from users where username=?")
	//		.passwordEncoder(new BCryptPasswordEncoder());
	//	}

}






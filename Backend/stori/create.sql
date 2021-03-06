
    create table roles (
       id  bigserial not null,
        name varchar(60),
        primary key (id)
    )

    create table timeline (
       id  bigserial not null,
        created_at timestamp,
        name varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    create table user_roles (
       user_id int8 not null,
        role_id int8 not null,
        primary key (user_id, role_id)
    )

    create table user_timelines (
       timeline_id int8,
        user_id int8 not null,
        primary key (user_id)
    )

    create table users (
       id  bigserial not null,
        created_at timestamp,
        email varchar(255),
        name varchar(255),
        password varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    alter table roles 
       add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)

    alter table timeline 
       add constraint UK4t4kbfifo7wibur20esm777wi unique (username)

    alter table users 
       add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table user_roles 
       add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 
       foreign key (role_id) 
       references roles

    alter table user_roles 
       add constraint FKhfh9dx7w3ubf1co1vdev94g3f 
       foreign key (user_id) 
       references users

    alter table user_timelines 
       add constraint FK5xow369h8benkq6no1gegl4jb 
       foreign key (timeline_id) 
       references timeline

    alter table user_timelines 
       add constraint FKqx3y7k03jb4yycre7n20kshx5 
       foreign key (user_id) 
       references users

    create table roles (
       id  bigserial not null,
        name varchar(60),
        primary key (id)
    )

    create table timeline (
       id  bigserial not null,
        created_at timestamp,
        name varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    create table user_roles (
       user_id int8 not null,
        role_id int8 not null,
        primary key (user_id, role_id)
    )

    create table user_timelines (
       timeline_id int8,
        user_id int8 not null,
        primary key (user_id)
    )

    create table users (
       id  bigserial not null,
        created_at timestamp,
        email varchar(255),
        name varchar(255),
        password varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    alter table roles 
       add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)

    alter table timeline 
       add constraint UK4t4kbfifo7wibur20esm777wi unique (username)

    alter table users 
       add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table user_roles 
       add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 
       foreign key (role_id) 
       references roles

    alter table user_roles 
       add constraint FKhfh9dx7w3ubf1co1vdev94g3f 
       foreign key (user_id) 
       references users

    alter table user_timelines 
       add constraint FK5xow369h8benkq6no1gegl4jb 
       foreign key (timeline_id) 
       references timeline

    alter table user_timelines 
       add constraint FKqx3y7k03jb4yycre7n20kshx5 
       foreign key (user_id) 
       references users

    create table roles (
       id  bigserial not null,
        name varchar(60),
        primary key (id)
    )

    create table timeline (
       id  bigserial not null,
        created_at timestamp,
        name varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    create table user_roles (
       user_id int8 not null,
        role_id int8 not null,
        primary key (user_id, role_id)
    )

    create table user_timelines (
       timeline_id int8,
        user_id int8 not null,
        primary key (user_id)
    )

    create table users (
       id  bigserial not null,
        created_at timestamp,
        email varchar(255),
        name varchar(255),
        password varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    alter table roles 
       add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)

    alter table timeline 
       add constraint UK4t4kbfifo7wibur20esm777wi unique (username)

    alter table users 
       add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table user_roles 
       add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 
       foreign key (role_id) 
       references roles

    alter table user_roles 
       add constraint FKhfh9dx7w3ubf1co1vdev94g3f 
       foreign key (user_id) 
       references users

    alter table user_timelines 
       add constraint FK5xow369h8benkq6no1gegl4jb 
       foreign key (timeline_id) 
       references timeline

    alter table user_timelines 
       add constraint FKqx3y7k03jb4yycre7n20kshx5 
       foreign key (user_id) 
       references users

    create table roles (
       id  bigserial not null,
        name varchar(60),
        primary key (id)
    )

    create table timeline (
       id  bigserial not null,
        created_at timestamp,
        name varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    create table user_roles (
       user_id int8 not null,
        role_id int8 not null,
        primary key (user_id, role_id)
    )

    create table user_timelines (
       timeline_id int8,
        user_id int8 not null,
        primary key (user_id)
    )

    create table users (
       id  bigserial not null,
        created_at timestamp,
        email varchar(255),
        name varchar(255),
        password varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    alter table roles 
       add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)

    alter table timeline 
       add constraint UK4t4kbfifo7wibur20esm777wi unique (username)

    alter table users 
       add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table user_roles 
       add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 
       foreign key (role_id) 
       references roles

    alter table user_roles 
       add constraint FKhfh9dx7w3ubf1co1vdev94g3f 
       foreign key (user_id) 
       references users

    alter table user_timelines 
       add constraint FK5xow369h8benkq6no1gegl4jb 
       foreign key (timeline_id) 
       references timeline

    alter table user_timelines 
       add constraint FKqx3y7k03jb4yycre7n20kshx5 
       foreign key (user_id) 
       references users

    create table roles (
       id  bigserial not null,
        name varchar(60),
        primary key (id)
    )

    create table timeline (
       id  bigserial not null,
        created_at timestamp,
        name varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    create table user_roles (
       user_id int8 not null,
        role_id int8 not null,
        primary key (user_id, role_id)
    )

    create table user_timelines (
       timeline_id int8,
        user_id int8 not null,
        primary key (user_id)
    )

    create table users (
       id  bigserial not null,
        created_at timestamp,
        email varchar(255),
        name varchar(255),
        password varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    alter table roles 
       add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)

    alter table timeline 
       add constraint UK4t4kbfifo7wibur20esm777wi unique (username)

    alter table users 
       add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table user_roles 
       add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 
       foreign key (role_id) 
       references roles

    alter table user_roles 
       add constraint FKhfh9dx7w3ubf1co1vdev94g3f 
       foreign key (user_id) 
       references users

    alter table user_timelines 
       add constraint FK5xow369h8benkq6no1gegl4jb 
       foreign key (timeline_id) 
       references timeline

    alter table user_timelines 
       add constraint FKqx3y7k03jb4yycre7n20kshx5 
       foreign key (user_id) 
       references users

    create table roles (
       id  bigserial not null,
        name varchar(60),
        primary key (id)
    )

    create table timeline (
       id  bigserial not null,
        created_at timestamp,
        name varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    create table user_roles (
       user_id int8 not null,
        role_id int8 not null,
        primary key (user_id, role_id)
    )

    create table user_timelines (
       timeline_id int8,
        user_id int8 not null,
        primary key (user_id)
    )

    create table users (
       id  bigserial not null,
        created_at timestamp,
        email varchar(255),
        name varchar(255),
        password varchar(255),
        updated_at timestamp,
        username varchar(255),
        primary key (id)
    )

    alter table roles 
       add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)

    alter table timeline 
       add constraint UK4t4kbfifo7wibur20esm777wi unique (username)

    alter table users 
       add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)

    alter table user_roles 
       add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 
       foreign key (role_id) 
       references roles

    alter table user_roles 
       add constraint FKhfh9dx7w3ubf1co1vdev94g3f 
       foreign key (user_id) 
       references users

    alter table user_timelines 
       add constraint FK5xow369h8benkq6no1gegl4jb 
       foreign key (timeline_id) 
       references timeline

    alter table user_timelines 
       add constraint FKqx3y7k03jb4yycre7n20kshx5 
       foreign key (user_id) 
       references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users
create table blocks (id  bigserial not null, content varchar(255), primary key (id))
create table box_blocks (box_id int8 not null, block_id int8 not null)
create table boxes (id  bigserial not null, name varchar(255), primary key (id))
create table roles (id  bigserial not null, name varchar(60), primary key (id))
create table timeline_boxes (timeline_id int8 not null, box_id int8 not null)
create table timelines (id  bigserial not null, created_at timestamp, name varchar(255), updated_at timestamp, username varchar(255), primary key (id))
create table user_roles (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id))
create table user_timeline (timeline_id int8, user_id int8 not null, primary key (user_id))
create table users (id  bigserial not null, created_at timestamp, email varchar(255), name varchar(255), password varchar(255), updated_at timestamp, username varchar(255), primary key (id))
alter table box_blocks add constraint UK_9cbaarpbupxkjio7lvxy4vv15 unique (block_id)
alter table roles add constraint UK_nb4h0p6txrmfc0xbrd1kglp9t unique (name)
alter table timeline_boxes add constraint UK_tgyxx07ba167kcpo8xcrx0xo9 unique (box_id)
alter table timelines add constraint UKosqhvtg1bf1pb0jug8d95651p unique (username)
alter table users add constraint UKr43af9ap4edm43mmtq01oddj6 unique (username)
alter table users add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table box_blocks add constraint FKhw5fjdwbp4o7pnjfkh4yi6gai foreign key (block_id) references blocks
alter table box_blocks add constraint FKk8awe5kw2bb73g5s1ffjjgpam foreign key (box_id) references boxes
alter table timeline_boxes add constraint FKm66o30lqd8ddq095l35q55ge8 foreign key (box_id) references boxes
alter table timeline_boxes add constraint FK9acc876uybvel2cf66dn8795w foreign key (timeline_id) references timelines
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users
alter table user_timeline add constraint FKr5qg7yja80h01hkbbhfs7mtgc foreign key (timeline_id) references timelines
alter table user_timeline add constraint FKa465ulk84ul6kipfv0ls8jkjr foreign key (user_id) references users

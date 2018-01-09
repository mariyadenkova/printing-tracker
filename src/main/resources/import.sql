-- DB propagation script
-- This script will be automatically executed to create initial DB values, in case
-- when the spring.jpa.hibernate.ddl-auto is 'create'

-- create default roles
insert into roles (id, authority) values (1, 'ROLE_ADMIN');
insert into roles (id, authority) values (2, 'ROLE_USER');
-- create default admin user with 'admin' password
insert into users (id, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled, password, username) values (1, true, true, true, true, '$2a$10$kSIa7De9pPwVICOL2SQmfuM0gbwlcMxFag/C82fZsT0u/suGwye6K', 'admin@admin');
-- provide 'admin' user 'admin' role
insert into users_roles (user_id, role_id) values (1, 1);


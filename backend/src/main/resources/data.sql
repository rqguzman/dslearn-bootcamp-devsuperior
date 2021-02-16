-- TEMPLATE USERS
INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob McGee', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

-- TEMPLATE ROLES
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

-- TEMPLATE USER ROLES
INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

-- TEMPLATE COURSES
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Web development bootcamp', 'shorturl.at/lDFIZ', 'shorturl.at/ruxF8');

-- TEMPLATE OFFERS
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-02-16T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-02-16T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2021-04-16T03:00:00Z', TIMESTAMP WITH TIME ZONE '2022-04-16T03:00:00Z', 1);

-- TEMPLATE RESOURCES
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('HTML5 Learning Trail', 'Every journey begins with a single step', 1, 'shorturl.at/ruxF8', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('CSS Learning Trail', 'Where the magic happens', 2, 'shorturl.at/ruxF8', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Got questions?', 3, 'shorturl.at/ruxF8', 3, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Learn from the best', 4, 'shorturl.at/ruxF8', 4, 1);

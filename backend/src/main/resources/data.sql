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

-- TEMPLATE SECTIONS
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 01', 'HTML history', 1, 'shorturl.at/ruxF8', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 02', 'HTML basic concepts', 1, 'shorturl.at/ruxF8', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 03', 'Your first HTML web page', 1, 'shorturl.at/ruxF8', 1, 2);

-- TEMPLATE ENROLLMENTS
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, is_Available, is_Only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2021-02-16T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, is_Available, is_Only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2021-02-17T18:30:00Z', null, true, false);

-- TEMPLATE LESSONS
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Chapter 01 - Lesson 01', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'HTML & CSS for Beginners', 'https://youtu.be/tKKWBcYW19I');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Chapter 01 - Lesson 02', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'HTML & CSS for Beginners', 'https://youtu.be/tKKWBcYW19I');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Chapter 01 - Lesson 03', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'HTML & CSS for Beginners', 'https://youtu.be/tKKWBcYW19I');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Chapter 01 - Task', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Develop a simple landing page using HTML', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-02-25T23:00:00Z');

-- TEMPLATE LESSONS DONE
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

-- TEMPLATE NOTIFICATIONS
INSERT INTO tb_notification (text, moment, is_Read, route, user_id) VALUES ('Task submission feedback #1: please revise', TIMESTAMP WITH TIME ZONE '2021-02-10T13:30:00Z', true, '/offers/1/resource/1/sections/1',1);
INSERT INTO tb_notification (text, moment, is_Read, route, user_id) VALUES ('Task submission feedback #2: please revise', TIMESTAMP WITH TIME ZONE '2021-02-12T18:27:40Z', true, '/offers/1/resource/1/sections/1',1);
INSERT INTO tb_notification (text, moment, is_Read, route, user_id) VALUES ('Task submission feedback: accepted', TIMESTAMP WITH TIME ZONE '2021-02-14T23:45:00Z', true, '/offers/1/resource/1/sections/1',1);

-- TEMPLATE DELIVERIES
INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2021-02-08T23:59:59Z', 1, null, null, 4, 1, 1);

-- TEMPLATE TOPICS
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic #1', 'Topic`s body #1', TIMESTAMP WITH TIME ZONE '2021-02-12T15:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic #2', 'Topic`s body #2', TIMESTAMP WITH TIME ZONE '2021-02-13T15:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic #3', 'Topic`s body #3', TIMESTAMP WITH TIME ZONE '2021-02-14T15:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic #4', 'Topic`s body #4', TIMESTAMP WITH TIME ZONE '2021-02-15T15:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic #5', 'Topic`s body #5', TIMESTAMP WITH TIME ZONE '2021-02-16T15:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic #6', 'Topic`s body #6', TIMESTAMP WITH TIME ZONE '2021-02-17T15:00:00Z', 2, 1, 3);

-- TEMPLATE LIKES
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

-- TEMPLATE REPLIES
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Try to restart your equipment.', TIMESTAMP WITH TIME ZONE '2021-02-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('It worked, thanks!', TIMESTAMP WITH TIME ZONE '2021-02-17T15:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
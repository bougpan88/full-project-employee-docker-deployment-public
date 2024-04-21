 --                                                                                                                                      
 -- Data for Name: attribute; Type: TABLE DATA; Schema: public; Owner: admin                                                                  
 --  
INSERT INTO public.attribute VALUES (55, 'Height');
INSERT INTO public.attribute VALUES (56, 'Weight');                                                                                                                                                                                                                                          
 --                                                                                                                                      
 -- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: admin                                                                  
 --                                                                                                                                           
INSERT INTO public.employee VALUES (52, '{ "lat": 37.06038275, "lng": 22.09526539 }', '1991-01-29 00:00:00', true, '2018-01-01 00:00:00', 'Nansy Bougioukou', NULL);
INSERT INTO public.employee VALUES (53, '{ "lat": 37.05469762, "lng": 22.0387888 }', '1970-01-20 00:00:00', true, '1989-01-20 00:00:00', 'Hlias Alexopoulos', NULL);
INSERT INTO public.employee VALUES (54, '{ "lat": 36.91356336, "lng": 21.69488668 }', '1993-06-27 00:00:00', true, '2020-07-15 00:00:00', 'Vily Dionysopoulou', NULL);
INSERT INTO public.employee VALUES (57, '{"lat":37.0089934289915, "lng":22.155203076015223}', '1970-05-20 00:00:00', true, '1995-02-01 00:00:00', 'George Bougioukos', NULL);                                                                                                          
INSERT INTO public.employee VALUES (51, '{ "lat": 37.04082549, "lng": 22.1251452 }', '1989-11-29 00:00:00', true, '2020-01-29 00:00:00', 'Panagiotis Bougioukos', NULL);                                                                                                                                                                                                                                                                                                                                               
--                                                                                                                                             
-- Data for Name: employee_attribute; Type: TABLE DATA; Schema: public; Owner: admin                                                            
--                                                                                                                                               																																				 
INSERT INTO public.employee_attribute VALUES (55, 52, 'Medium');                                                                                 
INSERT INTO public.employee_attribute VALUES (55, 57, 'Short');                                                                               
INSERT INTO public.employee_attribute VALUES (55, 51, 'Medium');  
INSERT INTO public.employee_attribute VALUES (55, 53, 'Medium');                                                                             

INSERT INTO public.application_User (id,username,password,enabled,locked,account_expire,credentials_expire, register_date) VALUES (1,'admin', '$2a$10$oXVoPe1o.WOop4vdABa/8ebB5HE7bTbWi8TIQj5Pazto91ybsFWn.',true,false,'2050-01-01','2050-01-01','2020-01-01');
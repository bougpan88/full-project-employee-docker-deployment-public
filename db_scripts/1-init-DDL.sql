
CREATE TABLE public.attribute (                                                                                                                                             
attr_id bigint NOT NULL,                                                                                                                                                
attr_name character varying(50) NOT NULL                                                                                                                            
);                                                                                                                                                                                 

ALTER TABLE public.attribute OWNER TO admin;                                                                                                                                      

CREATE TABLE public.employee (                                                                                                                                              
emp_id bigint NOT NULL,                                                                                                                                                 
emp_address character varying(255) NOT NULL,                                                                                                                            
emp_birth_date timestamp without time zone NOT NULL,                                                                                                                   
 emp_has_car boolean NOT NULL,                                                                                                                                           
 emp_date_of_hire timestamp without time zone NOT NULL,                                                                                                                  
 emp_name character varying(100) NOT NULL,                                                                                                                               
 supervisor_emp_id bigint                                                                                                                                            
 );       
 
 
CREATE TABLE public.application_user (                                                                                                                                              
 id bigint NOT NULL,                                                                                                                                                 
 username character varying(255) NOT NULL,                                                                                                                            
 password character varying(255) NOT NULL,                                                                                                                 
 enabled boolean,                                                                                                                                           
 locked boolean,                                                                                                                  
 account_expire timestamp without time zone,   
 credentials_expire timestamp without time zone,   
 register_date timestamp without time zone    
 );        
 

ALTER TABLE public.employee OWNER TO admin;                                                                                                                          

CREATE TABLE public.employee_attribute (                                                                                                                                    
attr_id bigint NOT NULL,                                                                                                                                                
emp_id bigint NOT NULL,                                                                                                                                                 
attr_value character varying(255) NOT NULL                                                                                                                          
);                                                                                                                                                                             

ALTER TABLE ONLY public.application_user                                                                                                                                           
ADD CONSTRAINT uk_7ey6hb3t5auh0gq4la2cj0acc UNIQUE (username); 

ALTER TABLE public.employee_attribute OWNER TO admin;                                                                                                                       
ALTER TABLE ONLY public.attribute                                                                                                                                           
ADD CONSTRAINT attribute_pkey PRIMARY KEY (attr_id);                                                                                                                              

ALTER TABLE ONLY public.employee_attribute                                                                                                                                  
ADD CONSTRAINT employee_attribute_pkey PRIMARY KEY (attr_id, emp_id);                                                                                                            

ALTER TABLE ONLY public.employee                                                                                                                                            
ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_id);                                                                                                                               

ALTER TABLE ONLY public.attribute                                                                                                                                           
ADD CONSTRAINT uk_7ey6hb3t5auh0gq4la2cj0d4t UNIQUE (attr_name);                                                                                                             

ALTER TABLE ONLY public.employee_attribute                                                                                                                                  
ADD CONSTRAINT fkivsjrk55so95t3sff1daj74v1 FOREIGN KEY (attr_id) REFERENCES public.attribute(attr_id);                                                                      

ALTER TABLE ONLY public.employee                                                                                                                                            
ADD CONSTRAINT fkmyimpf7wu7ne9w3cpejig42dk FOREIGN KEY (supervisor_emp_id) REFERENCES public.employee(emp_id) ON DELETE SET NULL;                                                                    

ALTER TABLE ONLY public.employee_attribute                                                                                                                                  
ADD CONSTRAINT fksg1oynaiyxt1psqioqtacd9ck FOREIGN KEY (emp_id) REFERENCES public.employee(emp_id);                                                                             
BEGIN TRANSACTION;
CREATE TABLE claims (
    claim_id INTEGER PRIMARY KEY,
    member_id INTEGER NOT NULL REFERENCES members(member_id),
    provider_id INTEGER NOT NULL REFERENCES providers(provider_id),
    plan_id INTEGER NOT NULL REFERENCES plans(plan_id),
    service_date DATE NOT NULL,
    submitted_date DATE NOT NULL,
    processed_date DATE,
    service_type TEXT NOT NULL,
    diagnosis_code TEXT NOT NULL,
    diagnosis_desc TEXT NOT NULL,
    billed_amount REAL NOT NULL,
    allowed_amount REAL,
    paid_amount REAL,
    claim_status TEXT NOT NULL,
    denial_reason TEXT
);
INSERT INTO "claims" VALUES(69,21,5,3,'2025-01-09','2025-01-09','2025-02-16','Outpatient Surgery','K21.9','GERD',19178.26,11510.47,10584.98,'Paid',NULL);
INSERT INTO "claims" VALUES(184,7,11,1,'2024-07-28','2024-07-29','2024-08-11','Imaging','M54.5','Low back pain',744.7,526.79,402.18,'Paid',NULL);
INSERT INTO "claims" VALUES(205,16,6,3,'2024-06-11','2024-06-13','2024-07-06','Specialist Consult','I25.10','Atherosclerotic heart disease',180.88,141.43,137.82,'Paid',NULL);
INSERT INTO "claims" VALUES(215,7,3,1,'2024-09-10','2024-09-12','2024-10-19','Specialist Consult','O80','Normal delivery',393.66,274.88,233.02,'Paid',NULL);
INSERT INTO "claims" VALUES(244,33,10,2,'2024-10-10','2024-10-11','2024-10-24','Outpatient Surgery','E11.9','Type 2 diabetes without complications',17340.29,10525.01,9082.64,'Paid',NULL);
INSERT INTO "claims" VALUES(246,35,7,2,'2024-10-15','2024-10-17','2024-11-06','Office Visit','I25.10','Atherosclerotic heart disease',244.42,130.37,106.48,'Paid',NULL);
INSERT INTO "claims" VALUES(312,6,14,1,'2024-02-05','2024-02-09','2024-03-17','Physical Therapy','F32.9','Major depressive disorder',161.36,101.9,84.84,'Paid',NULL);
INSERT INTO "claims" VALUES(335,16,7,3,'2024-04-26','2024-04-30','2024-05-17','Prescription Drug','M54.5','Low back pain',452.1,302.79,236.57,'Paid',NULL);
INSERT INTO "claims" VALUES(461,5,14,1,'2024-05-16','2024-05-17','2024-06-25','Urgent Care','C50.919','Malignant neoplasm of breast',204.28,149.76,121.3,'Paid',NULL);
INSERT INTO "claims" VALUES(474,33,8,2,'2024-09-18','2024-09-18','2024-09-23','Urgent Care','N18.3','Chronic kidney disease, stage 3',634.07,501.64,417.75,'Paid',NULL);
INSERT INTO "claims" VALUES(487,20,12,1,'2025-02-03','2025-02-05','2025-03-07','Behavioral Health Session','F32.9','Major depressive disorder',229.06,163.62,154.98,'Paid',NULL);
INSERT INTO "claims" VALUES(500,36,4,3,'2024-04-22','2024-04-27',NULL,'Preventive Care','J06.9','Acute upper respiratory infection',132.44,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(506,29,12,3,'2024-06-02','2024-06-07','2024-06-17','Specialist Consult','E66.9','Obesity, unspecified',438.62,309.86,217.19,'Paid',NULL);
INSERT INTO "claims" VALUES(543,19,11,3,'2025-06-14','2025-06-19','2025-07-25','Office Visit','E66.9','Obesity, unspecified',114.5,83.21,79.93,'Paid',NULL);
INSERT INTO "claims" VALUES(590,20,12,1,'2024-03-21','2024-03-24','2024-04-30','Office Visit','E11.9','Type 2 diabetes without complications',286.6,152.56,144.77,'Paid',NULL);
INSERT INTO "claims" VALUES(721,10,10,5,'2025-03-14','2025-03-15',NULL,'Imaging','O80','Normal delivery',1773.93,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(930,7,13,1,'2024-11-18','2024-11-18','2024-12-24','Preventive Care','I10','Essential hypertension',124.73,63.76,61.46,'Paid',NULL);
INSERT INTO "claims" VALUES(993,25,9,2,'2024-02-19','2024-02-22','2024-04-19','Specialist Consult','I25.10','Atherosclerotic heart disease',595.47,0.0,0.0,'Denied','Coordination of benefits issue');
INSERT INTO "claims" VALUES(1063,11,6,2,'2025-06-10','2025-06-11','2025-07-24','Office Visit','C50.919','Malignant neoplasm of breast',168.65,92.54,88.02,'Paid',NULL);
INSERT INTO "claims" VALUES(1092,38,12,4,'2024-08-15','2024-08-18','2024-09-18','Imaging','I10','Essential hypertension',1567.89,784.61,583.27,'Paid',NULL);
INSERT INTO "claims" VALUES(1118,25,4,2,'2024-11-02','2024-11-05','2024-11-28','Lab Work','F41.1','Generalized anxiety disorder',420.77,0.0,0.0,'Denied','Prior authorization not obtained');
INSERT INTO "claims" VALUES(1278,37,6,1,'2024-10-20','2024-10-22','2024-10-28','Specialist Consult','E11.9','Type 2 diabetes without complications',504.13,400.73,286.85,'Paid',NULL);
INSERT INTO "claims" VALUES(1315,19,14,3,'2024-11-04','2024-11-07','2024-12-17','Lab Work','K21.9','GERD',231.82,188.72,183.2,'Paid',NULL);
INSERT INTO "claims" VALUES(1333,20,2,1,'2024-11-27','2024-12-01','2024-12-12','Imaging','E66.9','Obesity, unspecified',1226.85,755.71,544.4,'Paid',NULL);
INSERT INTO "claims" VALUES(1334,37,1,1,'2025-04-04','2025-04-07','2025-04-17','Office Visit','K21.9','GERD',212.38,144.98,117.5,'Paid',NULL);
INSERT INTO "claims" VALUES(1450,1,11,3,'2025-03-29','2025-03-31','2025-05-08','Preventive Care','C50.919','Malignant neoplasm of breast',38.45,32.58,23.86,'Paid',NULL);
INSERT INTO "claims" VALUES(1482,8,6,4,'2024-12-20','2024-12-21','2025-01-29','Prescription Drug','J45.909','Asthma, unspecified',690.99,0.0,0.0,'Denied','Service not covered under plan');
INSERT INTO "claims" VALUES(1534,25,6,2,'2025-02-12','2025-02-12','2025-02-20','Preventive Care','K21.9','GERD',144.62,108.01,96.25,'Paid',NULL);
INSERT INTO "claims" VALUES(1795,2,7,2,'2024-06-29','2024-07-02','2024-08-10','Preventive Care','N18.3','Chronic kidney disease, stage 3',108.33,88.72,77.85,'Paid',NULL);
INSERT INTO "claims" VALUES(1887,36,6,3,'2025-02-27','2025-02-27','2025-03-27','Preventive Care','J06.9','Acute upper respiratory infection',48.18,0.0,0.0,'Denied','Medical necessity not established');
INSERT INTO "claims" VALUES(1930,19,11,3,'2024-11-21','2024-11-22','2024-11-30','Emergency Room','E66.9','Obesity, unspecified',3116.44,2178.7,1951.26,'Paid',NULL);
INSERT INTO "claims" VALUES(1986,2,13,2,'2024-11-13','2024-11-15','2024-11-17','Specialist Consult','F41.1','Generalized anxiety disorder',517.4,324.48,315.22,'Paid',NULL);
INSERT INTO "claims" VALUES(2024,24,10,2,'2024-06-14','2024-06-14','2024-07-06','Lab Work','M17.9','Osteoarthritis of knee',328.6,203.48,202.78,'Paid',NULL);
INSERT INTO "claims" VALUES(2091,39,1,1,'2024-02-20','2024-02-23','2024-03-25','Office Visit','J45.909','Asthma, unspecified',207.65,111.22,86.66,'Paid',NULL);
INSERT INTO "claims" VALUES(2114,31,9,2,'2024-05-03','2024-05-07',NULL,'Office Visit','K21.9','GERD',193.94,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(2135,2,1,2,'2024-04-13','2024-04-18','2024-05-04','Prescription Drug','E11.9','Type 2 diabetes without complications',611.48,409.34,332.82,'Paid',NULL);
INSERT INTO "claims" VALUES(2228,6,3,1,'2024-07-01','2024-07-03','2024-07-14','Imaging','J06.9','Acute upper respiratory infection',3365.29,2765.77,2151.86,'Paid',NULL);
INSERT INTO "claims" VALUES(2346,14,13,3,'2024-12-17','2024-12-18','2024-12-23','Office Visit','E66.9','Obesity, unspecified',192.94,125.13,124.03,'Paid',NULL);
INSERT INTO "claims" VALUES(2459,29,6,3,'2025-01-14','2025-01-18','2025-01-26','Behavioral Health Session','I25.10','Atherosclerotic heart disease',183.43,0.0,0.0,'Denied','Service not covered under plan');
INSERT INTO "claims" VALUES(2665,39,5,1,'2024-10-17','2024-10-21','2024-10-21','Specialist Consult','N18.3','Chronic kidney disease, stage 3',193.28,157.29,129.88,'Paid',NULL);
INSERT INTO "claims" VALUES(2682,4,15,2,'2025-05-23','2025-05-23',NULL,'Prescription Drug','I10','Essential hypertension',729.97,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(2683,38,14,4,'2024-11-09','2024-11-12','2024-12-09','Urgent Care','E66.9','Obesity, unspecified',524.48,287.31,275.42,'Paid',NULL);
INSERT INTO "claims" VALUES(2699,18,2,5,'2024-12-23','2024-12-23','2024-12-26','Preventive Care','I10','Essential hypertension',117.93,94.45,75.75,'Paid',NULL);
INSERT INTO "claims" VALUES(2702,17,1,2,'2025-01-24','2025-01-29',NULL,'Lab Work','M17.9','Osteoarthritis of knee',447.76,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(2880,4,9,2,'2024-08-23','2024-08-24','2024-09-26','Office Visit','E66.9','Obesity, unspecified',209.43,0.0,0.0,'Denied','Timely filing limit exceeded');
INSERT INTO "claims" VALUES(2912,35,13,2,'2025-02-01','2025-02-02','2025-02-25','Emergency Room','C50.919','Malignant neoplasm of breast',4947.53,2236.3,2127.95,'Paid',NULL);
INSERT INTO "claims" VALUES(2991,21,11,3,'2025-02-22','2025-02-26','2025-03-20','Preventive Care','Z00.00','General adult medical exam',169.03,116.25,110.97,'Paid',NULL);
INSERT INTO "claims" VALUES(3156,13,10,5,'2025-06-18','2025-06-18','2025-06-27','Office Visit','K21.9','GERD',200.82,142.82,136.94,'Paid',NULL);
INSERT INTO "claims" VALUES(3203,40,14,1,'2024-05-20','2024-05-25',NULL,'Imaging','E11.9','Type 2 diabetes without complications',3356.78,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(3249,34,12,3,'2025-01-22','2025-01-25',NULL,'Office Visit','F32.9','Major depressive disorder',297.85,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(3286,37,6,1,'2024-02-29','2024-03-04','2024-04-06','Outpatient Surgery','E66.9','Obesity, unspecified',3755.75,2703.41,2552.96,'Paid',NULL);
INSERT INTO "claims" VALUES(3317,10,13,5,'2024-04-03','2024-04-07','2024-04-07','Specialist Consult','M17.9','Osteoarthritis of knee',227.79,128.89,122.53,'Paid',NULL);
INSERT INTO "claims" VALUES(3370,14,7,3,'2025-05-17','2025-05-20','2025-06-10','Lab Work','J45.909','Asthma, unspecified',484.34,338.64,301.69,'Paid',NULL);
INSERT INTO "claims" VALUES(3437,1,4,3,'2025-03-31','2025-04-05','2025-04-30','Prescription Drug','M54.5','Low back pain',474.05,262.54,205.53,'Paid',NULL);
INSERT INTO "claims" VALUES(3558,12,3,1,'2024-01-26','2024-01-31','2024-03-23','Imaging','E66.9','Obesity, unspecified',511.64,0.0,0.0,'Denied','Coordination of benefits issue');
INSERT INTO "claims" VALUES(3627,40,6,1,'2025-06-19','2025-06-23','2025-07-10','Lab Work','I25.10','Atherosclerotic heart disease',98.38,62.34,59.32,'Paid',NULL);
INSERT INTO "claims" VALUES(3706,32,3,3,'2024-01-25','2024-01-28','2024-02-16','Office Visit','J45.909','Asthma, unspecified',153.41,124.4,111.21,'Paid',NULL);
INSERT INTO "claims" VALUES(3775,23,7,2,'2024-12-07','2024-12-08',NULL,'Inpatient Stay','C50.919','Malignant neoplasm of breast',27513.67,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(3827,6,7,1,'2025-06-10','2025-06-11','2025-07-11','Physical Therapy','F41.1','Generalized anxiety disorder',175.63,99.88,94.75,'Paid',NULL);
INSERT INTO "claims" VALUES(3867,39,6,1,'2024-07-23','2024-07-27','2024-08-07','Emergency Room','F41.1','Generalized anxiety disorder',4980.51,2627.68,2268.2,'Paid',NULL);
INSERT INTO "claims" VALUES(3977,4,4,2,'2024-08-25','2024-08-25','2024-08-31','Prescription Drug','O80','Normal delivery',508.31,314.97,243.71,'Paid',NULL);
INSERT INTO "claims" VALUES(4041,31,11,2,'2024-01-25','2024-01-29','2024-02-28','Emergency Room','F41.1','Generalized anxiety disorder',5839.53,0.0,0.0,'Denied','Coordination of benefits issue');
INSERT INTO "claims" VALUES(4047,13,9,5,'2024-08-04','2024-08-07','2024-08-29','Specialist Consult','M17.9','Osteoarthritis of knee',414.33,201.0,194.08,'Paid',NULL);
INSERT INTO "claims" VALUES(4107,38,11,4,'2025-06-05','2025-06-06','2025-06-12','Urgent Care','O80','Normal delivery',362.98,247.15,196.74,'Paid',NULL);
INSERT INTO "claims" VALUES(4157,32,7,3,'2024-01-23','2024-01-23','2024-02-07','Preventive Care','F41.1','Generalized anxiety disorder',86.74,47.15,36.15,'Paid',NULL);
INSERT INTO "claims" VALUES(4218,5,12,1,'2024-09-22','2024-09-26','2024-10-21','Outpatient Surgery','F41.1','Generalized anxiety disorder',15510.02,13007.54,9549.82,'Paid',NULL);
INSERT INTO "claims" VALUES(4258,19,6,3,'2025-04-08','2025-04-11',NULL,'Office Visit','E66.9','Obesity, unspecified',185.41,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(4296,11,6,2,'2025-06-08','2025-06-13','2025-06-25','Imaging','J06.9','Acute upper respiratory infection',2092.76,1359.64,1164.91,'Paid',NULL);
INSERT INTO "claims" VALUES(4319,13,1,5,'2024-06-08','2024-06-12',NULL,'Outpatient Surgery','I25.10','Atherosclerotic heart disease',3179.14,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(4465,5,2,1,'2024-10-18','2024-10-18',NULL,'Preventive Care','I10','Essential hypertension',42.85,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(4597,39,1,1,'2024-02-24','2024-02-29','2024-03-05','Office Visit','I10','Essential hypertension',193.81,154.72,124.45,'Paid',NULL);
INSERT INTO "claims" VALUES(4616,28,4,1,'2024-04-20','2024-04-20','2024-05-19','Specialist Consult','M54.5','Low back pain',274.49,157.91,141.33,'Paid',NULL);
INSERT INTO "claims" VALUES(4729,3,2,1,'2024-06-02','2024-06-06','2024-06-08','Lab Work','M17.9','Osteoarthritis of knee',189.24,140.15,108.25,'Paid',NULL);
INSERT INTO "claims" VALUES(4937,15,8,1,'2025-06-28','2025-07-03','2025-07-18','Prescription Drug','C50.919','Malignant neoplasm of breast',714.95,452.18,386.26,'Paid',NULL);
INSERT INTO "claims" VALUES(4948,3,6,1,'2025-06-17','2025-06-22','2025-07-08','Imaging','O80','Normal delivery',3467.17,2644.99,2644.29,'Paid',NULL);
INSERT INTO "claims" VALUES(4952,24,7,2,'2024-04-13','2024-04-16','2024-05-23','Behavioral Health Session','I10','Essential hypertension',261.17,199.25,160.32,'Paid',NULL);
INSERT INTO "claims" VALUES(4987,26,12,3,'2024-08-09','2024-08-09','2024-08-12','Emergency Room','E11.9','Type 2 diabetes without complications',5070.92,0.0,0.0,'Denied','Prior authorization not obtained');
INSERT INTO "claims" VALUES(5001,31,2,2,'2024-09-12','2024-09-17','2024-10-13','Office Visit','C50.919','Malignant neoplasm of breast',232.03,170.54,168.81,'Paid',NULL);
INSERT INTO "claims" VALUES(5086,35,3,2,'2024-08-06','2024-08-08','2024-08-23','Office Visit','N18.3','Chronic kidney disease, stage 3',246.16,172.93,146.19,'Paid',NULL);
INSERT INTO "claims" VALUES(5089,39,7,1,'2024-04-12','2024-04-17','2024-05-25','Preventive Care','K21.9','GERD',66.15,52.94,41.33,'Paid',NULL);
INSERT INTO "claims" VALUES(5130,1,9,3,'2024-01-05','2024-01-10','2024-01-24','Specialist Consult','E66.9','Obesity, unspecified',299.82,231.2,205.89,'Paid',NULL);
INSERT INTO "claims" VALUES(5146,30,1,2,'2024-06-19','2024-06-21','2024-07-27','Preventive Care','M54.5','Low back pain',74.09,54.91,46.9,'Paid',NULL);
INSERT INTO "claims" VALUES(5174,9,2,3,'2025-02-22','2025-02-27','2025-02-28','Preventive Care','I25.10','Atherosclerotic heart disease',68.07,48.29,38.73,'Paid',NULL);
INSERT INTO "claims" VALUES(5295,2,14,2,'2025-05-08','2025-05-08',NULL,'Office Visit','M54.5','Low back pain',124.59,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(5355,31,12,2,'2025-03-02','2025-03-05','2025-03-21','Lab Work','F41.1','Generalized anxiety disorder',151.39,109.38,89.66,'Paid',NULL);
INSERT INTO "claims" VALUES(5455,26,15,3,'2025-06-23','2025-06-24','2025-07-16','Lab Work','M54.5','Low back pain',370.24,243.57,202.99,'Paid',NULL);
INSERT INTO "claims" VALUES(5460,5,7,1,'2024-10-13','2024-10-13','2024-11-14','Lab Work','M17.9','Osteoarthritis of knee',66.19,48.09,46.01,'Paid',NULL);
INSERT INTO "claims" VALUES(5466,24,7,2,'2024-04-18','2024-04-19','2024-05-30','Preventive Care','Z00.00','General adult medical exam',31.67,19.79,17.01,'Paid',NULL);
INSERT INTO "claims" VALUES(5846,23,1,2,'2024-07-24','2024-07-24','2024-09-03','Urgent Care','F32.9','Major depressive disorder',470.8,327.85,272.14,'Paid',NULL);
INSERT INTO "claims" VALUES(5856,19,5,3,'2024-10-15','2024-10-16','2024-11-29','Outpatient Surgery','E66.9','Obesity, unspecified',10462.11,5565.45,3987.7,'Paid',NULL);
INSERT INTO "claims" VALUES(5884,7,10,1,'2024-11-28','2024-12-03',NULL,'Prescription Drug','M54.5','Low back pain',237.86,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(5930,2,12,2,'2025-04-29','2025-05-04','2025-05-07','Urgent Care','I25.10','Atherosclerotic heart disease',455.11,221.98,162.96,'Paid',NULL);
INSERT INTO "claims" VALUES(5981,23,8,2,'2024-03-25','2024-03-30','2024-03-29','Outpatient Surgery','J06.9','Acute upper respiratory infection',10811.22,6932.62,5668.98,'Paid',NULL);
INSERT INTO "claims" VALUES(6037,6,3,1,'2024-05-16','2024-05-16','2024-05-27','Specialist Consult','I25.10','Atherosclerotic heart disease',582.24,0.0,0.0,'Denied','Duplicate claim submission');
INSERT INTO "claims" VALUES(6226,9,12,3,'2024-01-12','2024-01-15','2024-01-16','Office Visit','F41.1','Generalized anxiety disorder',255.74,170.71,163.89,'Paid',NULL);
INSERT INTO "claims" VALUES(6254,19,14,3,'2024-02-28','2024-02-29','2024-03-23','Specialist Consult','K21.9','GERD',213.5,112.21,82.52,'Paid',NULL);
INSERT INTO "claims" VALUES(6357,27,11,4,'2025-05-17','2025-05-19','2025-06-19','Office Visit','F32.9','Major depressive disorder',110.48,51.93,45.84,'Paid',NULL);
INSERT INTO "claims" VALUES(6411,23,5,2,'2025-05-16','2025-05-16',NULL,'Preventive Care','J45.909','Asthma, unspecified',188.49,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(6425,21,14,3,'2024-11-01','2024-11-05','2024-12-11','Emergency Room','E11.9','Type 2 diabetes without complications',2279.06,1064.98,917.82,'Paid',NULL);
INSERT INTO "claims" VALUES(6526,8,4,4,'2024-05-19','2024-05-19','2024-07-01','Behavioral Health Session','C50.919','Malignant neoplasm of breast',322.23,205.91,162.47,'Paid',NULL);
INSERT INTO "claims" VALUES(6587,8,8,4,'2024-07-16','2024-07-19','2024-08-24','Emergency Room','E66.9','Obesity, unspecified',1363.12,881.43,715.82,'Paid',NULL);
INSERT INTO "claims" VALUES(6783,35,5,2,'2025-01-27','2025-02-01','2025-02-12','Prescription Drug','J06.9','Acute upper respiratory infection',272.27,146.96,125.98,'Paid',NULL);
INSERT INTO "claims" VALUES(6795,3,13,1,'2025-04-02','2025-04-03','2025-04-17','Imaging','K21.9','GERD',3239.1,2129.08,1686.4,'Paid',NULL);
INSERT INTO "claims" VALUES(6858,2,6,2,'2025-03-28','2025-03-28','2025-05-05','Physical Therapy','E66.9','Obesity, unspecified',234.97,115.87,88.98,'Paid',NULL);
INSERT INTO "claims" VALUES(6893,12,9,1,'2024-01-19','2024-01-19','2024-01-25','Office Visit','N18.3','Chronic kidney disease, stage 3',241.31,201.23,192.9,'Paid',NULL);
INSERT INTO "claims" VALUES(6948,16,14,3,'2024-02-09','2024-02-11','2024-02-28','Lab Work','E11.9','Type 2 diabetes without complications',305.59,177.08,136.8,'Paid',NULL);
INSERT INTO "claims" VALUES(7036,24,8,2,'2025-05-21','2025-05-21',NULL,'Lab Work','J06.9','Acute upper respiratory infection',274.39,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(7052,11,1,2,'2024-09-30','2024-10-04','2024-10-14','Emergency Room','M17.9','Osteoarthritis of knee',2399.99,1618.43,1519.37,'Paid',NULL);
INSERT INTO "claims" VALUES(7178,16,1,3,'2024-02-11','2024-02-15','2024-03-18','Inpatient Stay','M17.9','Osteoarthritis of knee',10510.0,7154.45,6275.83,'Paid',NULL);
INSERT INTO "claims" VALUES(7272,14,2,3,'2025-03-07','2025-03-09','2025-04-09','Inpatient Stay','I25.10','Atherosclerotic heart disease',27052.55,12239.55,11670.6,'Paid',NULL);
INSERT INTO "claims" VALUES(7282,35,14,2,'2025-02-21','2025-02-24',NULL,'Preventive Care','I10','Essential hypertension',48.48,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(7469,38,6,4,'2025-02-04','2025-02-05','2025-03-14','Lab Work','N18.3','Chronic kidney disease, stage 3',490.53,326.06,265.48,'Paid',NULL);
INSERT INTO "claims" VALUES(7531,32,11,3,'2024-04-08','2024-04-10','2024-05-11','Prescription Drug','J45.909','Asthma, unspecified',168.08,0.0,0.0,'Denied','Timely filing limit exceeded');
INSERT INTO "claims" VALUES(7561,6,4,1,'2024-06-01','2024-06-02','2024-07-02','Office Visit','J45.909','Asthma, unspecified',295.21,137.45,116.75,'Paid',NULL);
INSERT INTO "claims" VALUES(7669,29,8,3,'2025-04-14','2025-04-19','2025-04-19','Behavioral Health Session','M54.5','Low back pain',195.97,90.01,73.86,'Paid',NULL);
INSERT INTO "claims" VALUES(7705,34,6,3,'2025-05-12','2025-05-13','2025-06-10','Specialist Consult','J06.9','Acute upper respiratory infection',554.6,259.2,246.33,'Paid',NULL);
INSERT INTO "claims" VALUES(7715,35,11,2,'2025-04-21','2025-04-26','2025-06-02','Emergency Room','F41.1','Generalized anxiety disorder',903.96,741.18,611.97,'Paid',NULL);
INSERT INTO "claims" VALUES(7779,29,13,3,'2025-05-22','2025-05-27','2025-06-06','Prescription Drug','E11.9','Type 2 diabetes without complications',609.73,442.4,371.53,'Paid',NULL);
INSERT INTO "claims" VALUES(7816,2,8,2,'2024-12-04','2024-12-08','2025-01-11','Prescription Drug','M54.5','Low back pain',409.04,200.78,146.07,'Paid',NULL);
INSERT INTO "claims" VALUES(7820,26,13,3,'2024-10-10','2024-10-15','2024-10-26','Office Visit','I10','Essential hypertension',209.99,114.05,100.16,'Paid',NULL);
INSERT INTO "claims" VALUES(7931,24,2,2,'2024-09-21','2024-09-23',NULL,'Lab Work','N18.3','Chronic kidney disease, stage 3',250.69,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(7932,39,9,1,'2024-12-24','2024-12-25','2025-01-14','Office Visit','J45.909','Asthma, unspecified',153.7,85.24,70.21,'Paid',NULL);
INSERT INTO "claims" VALUES(7981,18,9,5,'2024-03-13','2024-03-17','2024-04-25','Preventive Care','E66.9','Obesity, unspecified',89.69,47.67,40.55,'Paid',NULL);
INSERT INTO "claims" VALUES(8001,40,1,1,'2024-12-21','2024-12-21','2025-02-02','Preventive Care','O80','Normal delivery',79.45,44.29,36.78,'Paid',NULL);
INSERT INTO "claims" VALUES(8080,1,7,3,'2024-12-02','2024-12-04','2025-01-07','Lab Work','M17.9','Osteoarthritis of knee',234.15,163.98,155.64,'Paid',NULL);
INSERT INTO "claims" VALUES(8111,19,9,3,'2025-02-12','2025-02-13','2025-03-20','Imaging','Z00.00','General adult medical exam',2127.32,1388.65,1324.58,'Paid',NULL);
INSERT INTO "claims" VALUES(8256,23,2,2,'2025-01-14','2025-01-16','2025-02-08','Office Visit','M54.5','Low back pain',271.69,212.28,207.88,'Paid',NULL);
INSERT INTO "claims" VALUES(8264,33,12,2,'2024-12-11','2024-12-14','2025-01-11','Office Visit','J45.909','Asthma, unspecified',298.45,234.44,167.22,'Paid',NULL);
INSERT INTO "claims" VALUES(8288,13,3,5,'2025-04-16','2025-04-18','2025-04-26','Office Visit','J45.909','Asthma, unspecified',109.19,0.0,0.0,'Denied','Missing or invalid diagnosis code');
INSERT INTO "claims" VALUES(8390,38,15,4,'2024-08-18','2024-08-22','2024-08-28','Office Visit','F32.9','Major depressive disorder',187.2,98.25,97.54,'Paid',NULL);
INSERT INTO "claims" VALUES(8426,13,13,5,'2025-06-17','2025-06-19','2025-07-24','Urgent Care','M17.9','Osteoarthritis of knee',439.16,370.86,273.69,'Paid',NULL);
INSERT INTO "claims" VALUES(8457,23,6,2,'2025-01-20','2025-01-21','2025-02-02','Prescription Drug','J06.9','Acute upper respiratory infection',597.12,462.28,354.66,'Paid',NULL);
INSERT INTO "claims" VALUES(8475,23,11,2,'2025-02-23','2025-02-23','2025-03-01','Imaging','J45.909','Asthma, unspecified',1669.78,904.25,744.31,'Paid',NULL);
INSERT INTO "claims" VALUES(8480,15,10,1,'2025-02-14','2025-02-16','2025-03-31','Specialist Consult','J45.909','Asthma, unspecified',184.18,105.05,83.76,'Paid',NULL);
INSERT INTO "claims" VALUES(8521,17,8,2,'2024-11-15','2024-11-18',NULL,'Emergency Room','C50.919','Malignant neoplasm of breast',2509.66,NULL,NULL,'Pending',NULL);
INSERT INTO "claims" VALUES(8522,1,3,3,'2024-07-01','2024-07-01','2024-08-15','Outpatient Surgery','F41.1','Generalized anxiety disorder',11317.83,0.0,0.0,'Denied','Medical necessity not established');
INSERT INTO "claims" VALUES(8686,32,14,3,'2025-04-28','2025-05-03','2025-06-01','Office Visit','I25.10','Atherosclerotic heart disease',209.66,159.79,117.85,'Paid',NULL);
INSERT INTO "claims" VALUES(8704,25,5,2,'2025-05-10','2025-05-11','2025-06-14','Lab Work','F32.9','Major depressive disorder',184.14,101.61,81.38,'Paid',NULL);
INSERT INTO "claims" VALUES(8763,19,15,3,'2024-03-07','2024-03-07','2024-03-21','Office Visit','J06.9','Acute upper respiratory infection',238.92,196.6,165.21,'Paid',NULL);
INSERT INTO "claims" VALUES(8792,9,9,3,'2024-12-16','2024-12-16','2025-01-13','Office Visit','F41.1','Generalized anxiety disorder',266.26,221.96,204.81,'Paid',NULL);
CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    dob DATE NOT NULL,
    gender TEXT NOT NULL,
    state TEXT NOT NULL,
    plan_id INTEGER NOT NULL REFERENCES plans(plan_id),
    enrollment_date DATE NOT NULL,
    term_date DATE
);
INSERT INTO "members" VALUES(1,'Kristin','Cohen','2024-08-16','F','SC',3,'2023-11-27',NULL);
INSERT INTO "members" VALUES(2,'Crystal','Johnson','2012-02-28','F','GA',2,'2024-02-06',NULL);
INSERT INTO "members" VALUES(3,'Daniel','Hahn','1967-05-01','M','VA',1,'2023-05-19',NULL);
INSERT INTO "members" VALUES(4,'Mary','Foster','2015-01-03','F','NC',2,'2023-06-12',NULL);
INSERT INTO "members" VALUES(5,'Derek','Wright','2018-04-03','M','NC',1,'2023-08-26',NULL);
INSERT INTO "members" VALUES(6,'Kevin','Hurst','1988-03-26','M','SC',1,'2023-05-16',NULL);
INSERT INTO "members" VALUES(7,'Yolanda','Hicks','1974-06-19','F','NC',1,'2023-04-24',NULL);
INSERT INTO "members" VALUES(8,'Ashley','Burton','1948-03-30','F','NC',4,'2023-01-25',NULL);
INSERT INTO "members" VALUES(9,'Arthur','James','2007-11-04','M','NC',3,'2023-08-07',NULL);
INSERT INTO "members" VALUES(10,'Wesley','Valencia','2025-03-09','M','SC',5,'2023-10-01',NULL);
INSERT INTO "members" VALUES(11,'Melanie','Herrera','1941-06-29','F','GA',2,'2024-01-08',NULL);
INSERT INTO "members" VALUES(12,'Jeffrey','Chavez','1963-03-13','M','GA',1,'2023-11-28','2024-01-31');
INSERT INTO "members" VALUES(13,'Deborah','Mason','2021-08-04','F','VA',5,'2024-03-28',NULL);
INSERT INTO "members" VALUES(14,'Sheila','Evans','1955-09-14','F','TN',3,'2024-04-16',NULL);
INSERT INTO "members" VALUES(15,'Brittany','Farmer','1994-10-29','F','NC',1,'2023-11-11',NULL);
INSERT INTO "members" VALUES(16,'Aaron','Nguyen','1986-05-13','M','TN',3,'2024-02-07','2024-11-02');
INSERT INTO "members" VALUES(17,'Sherry','Decker','1942-03-04','F','SC',2,'2024-04-25',NULL);
INSERT INTO "members" VALUES(18,'Travis','Miller','1966-08-28','M','SC',5,'2023-01-30','2025-03-14');
INSERT INTO "members" VALUES(19,'Philip','Cannon','1981-10-29','M','SC',3,'2023-02-05',NULL);
INSERT INTO "members" VALUES(20,'Krista','Baker','1951-06-07','F','SC',1,'2023-09-03',NULL);
INSERT INTO "members" VALUES(21,'Daniel','Ryan','2014-09-03','M','TN',3,'2023-08-07',NULL);
INSERT INTO "members" VALUES(22,'Emily','Carney','2002-07-24','F','VA',5,'2023-04-14',NULL);
INSERT INTO "members" VALUES(23,'Joseph','Martinez','1995-10-04','M','VA',2,'2023-08-15',NULL);
INSERT INTO "members" VALUES(24,'Leah','Hall','1959-08-13','F','NC',2,'2023-06-24',NULL);
INSERT INTO "members" VALUES(25,'Mark','Perez','1959-03-27','M','NC',2,'2023-02-06',NULL);
INSERT INTO "members" VALUES(26,'Benjamin','Young','2017-06-23','M','SC',3,'2024-03-20',NULL);
INSERT INTO "members" VALUES(27,'Brandi','Walls','1997-05-19','F','VA',4,'2023-04-21',NULL);
INSERT INTO "members" VALUES(28,'Rachel','Aguirre','1989-01-20','F','VA',1,'2023-09-02',NULL);
INSERT INTO "members" VALUES(29,'Jeffrey','Henderson','1956-09-13','M','NC',3,'2023-02-20',NULL);
INSERT INTO "members" VALUES(30,'Michael','Joyce','1980-03-19','M','TN',2,'2024-01-12',NULL);
INSERT INTO "members" VALUES(31,'Gerald','Hensley','1948-11-18','M','VA',2,'2023-07-28',NULL);
INSERT INTO "members" VALUES(32,'Jerry','Henderson','1961-08-26','M','TN',3,'2023-04-09',NULL);
INSERT INTO "members" VALUES(33,'Tammy','Ramos','1964-03-11','F','NC',2,'2023-05-10',NULL);
INSERT INTO "members" VALUES(34,'Anthony','Kidd','2013-09-24','M','NC',3,'2023-10-12',NULL);
INSERT INTO "members" VALUES(35,'Timothy','Allison','2011-07-31','M','VA',2,'2024-05-15',NULL);
INSERT INTO "members" VALUES(36,'Daniel','Morales','1954-08-27','M','GA',3,'2023-09-09',NULL);
INSERT INTO "members" VALUES(37,'William','Baker','1945-07-02','M','SC',1,'2023-07-15',NULL);
INSERT INTO "members" VALUES(38,'Jay','Bernard','2007-03-01','M','SC',4,'2023-08-24',NULL);
INSERT INTO "members" VALUES(39,'Michelle','Moore','2025-02-15','F','NC',1,'2023-10-15',NULL);
INSERT INTO "members" VALUES(40,'Lauren','Daniels','1965-09-26','F','NC',1,'2024-05-15',NULL);
CREATE TABLE plans (
    plan_id INTEGER PRIMARY KEY,
    plan_name TEXT NOT NULL,
    plan_type TEXT NOT NULL,
    monthly_premium REAL NOT NULL,
    deductible INTEGER NOT NULL,
    out_of_pocket_max INTEGER NOT NULL
);
INSERT INTO "plans" VALUES(1,'Bronze Basic HMO','HMO',320.0,6500,8500);
INSERT INTO "plans" VALUES(2,'Silver Select PPO','PPO',455.0,3500,7000);
INSERT INTO "plans" VALUES(3,'Gold Advantage PPO','PPO',610.0,1500,5000);
INSERT INTO "plans" VALUES(4,'Platinum Complete HMO','HMO',780.0,500,3000);
INSERT INTO "plans" VALUES(5,'Medicare Advantage Plus','Medicare Advantage',0.0,250,4000);
CREATE TABLE providers (
    provider_id INTEGER PRIMARY KEY,
    provider_name TEXT NOT NULL,
    specialty TEXT NOT NULL,
    npi TEXT NOT NULL,
    state TEXT NOT NULL
);
INSERT INTO "providers" VALUES(1,'Fowler Medical Group','Primary Care','1796233790','VA');
INSERT INTO "providers" VALUES(2,'Johnson Health Partners','Behavioral Health','1149827706','NC');
INSERT INTO "providers" VALUES(3,'Hill Specialty Care','Cardiology','1634036506','GA');
INSERT INTO "providers" VALUES(4,'Walker Medical Group','Primary Care','1100604502','SC');
INSERT INTO "providers" VALUES(5,'Doyle Health Partners','Radiology','1646412689','NC');
INSERT INTO "providers" VALUES(6,'Rhodes Specialty Care','Behavioral Health','1768820204','TN');
INSERT INTO "providers" VALUES(7,'Mcclain Associates','Behavioral Health','1482334538','TN');
INSERT INTO "providers" VALUES(8,'Miller Clinic','Primary Care','1814763202','SC');
INSERT INTO "providers" VALUES(9,'Henderson Associates','OB/GYN','1298362082','SC');
INSERT INTO "providers" VALUES(10,'Johnson Health Partners','OB/GYN','1109747451','NC');
INSERT INTO "providers" VALUES(11,'Robinson Associates','Cardiology','1385451171','VA');
INSERT INTO "providers" VALUES(12,'Wagner Specialty Care','Endocrinology','1866647391','NC');
INSERT INTO "providers" VALUES(13,'Johnson Associates','Radiology','1134031070','GA');
INSERT INTO "providers" VALUES(14,'Gonzalez Medical Group','Radiology','1314797776','TN');
INSERT INTO "providers" VALUES(15,'Santos Clinic','Physical Therapy','1206468299','NC');
COMMIT;

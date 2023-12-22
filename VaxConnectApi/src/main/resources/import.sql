
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Poliomielitis Vaccine', 'The polio vaccine is designed to protect against poliomyelitis, a highly contagious viral infection that can lead to paralysis. It has played a crucial role in the global effort to eradicate polio.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Difteria, Tétanos, Tosferina (DTP) Vaccine', 'The DTP vaccine provides immunity against three bacterial infections: diphtheria, tetanus, and pertussis (whooping cough). It is a key component of childhood immunization.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Haemophilus influenzae b Vaccine', 'This vaccine protects against Haemophilus influenzae type b, a bacterium that can cause severe infections in young children, such as pneumonia and meningitis.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Sarampión, Rubeola, Parotiditis (MRP) Vaccine', 'The MRP vaccine provides immunity against three viral infections: measles, rubella, and mumps. It is part of routine childhood vaccination programs.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Hepatitis B Vaccine', 'This vaccine helps prevent infection with the hepatitis B virus, a potentially serious liver infection. It is recommended for individuals at risk of exposure to the virus.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Enfermedad Meningocócica Vaccine', 'The meningococcal vaccine protects against meningococcal disease, which can cause meningitis and bloodstream infections. It is recommended for adolescents and certain high-risk groups.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Varicela (Chickenpox) Vaccine', 'The varicella vaccine provides immunity against the varicella-zoster virus, preventing chickenpox. It is routinely given to children and is effective in reducing the severity of the disease.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Virus del Papiloma Humano (HPV) Vaccine', 'The HPV vaccine helps prevent infection with certain types of human papillomavirus, reducing the risk of cervical and other cancers. It is recommended for adolescents and young adults.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Enfermedad Neumocócica Vaccine', 'This vaccine protects against infections caused by the bacterium Streptococcus pneumoniae, which can lead to pneumonia and other serious illnesses. It is recommended for infants, older adults, and high-risk individuals.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Virus Herpes Zóster (Shingles) Vaccine', 'The shingles vaccine helps prevent shingles, a painful skin rash caused by the reactivation of the varicella-zoster virus. It is recommended for adults, especially those over 50.');
INSERT INTO vacune (id, name, description) VALUES (UUID(), 'Gripe (Influenza) Vaccine', 'The influenza vaccine, commonly known as the flu shot, provides protection against the influenza viruses that circulate each flu season. It is recommended for everyone, especially those at higher risk of complications.');

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 2, 'VP1', 'Recommended for all children', 'None', (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 4, 'VP2', 'Additional protection for polio', 'None', (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 11, 'VP3', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 72, 'Booster', 'Boosts immunity against polio', 'None', (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 0, 'DTPA1', 'Recommended for infants', 'None', (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 2, 'DTPA2', 'Primary vaccination series', 'None', (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 4, 'DTPA3', 'Boosts immunity against diphtheria, tetanus, and whooping cough', 'None', (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 11, 'DTPA4', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 72, 'DTPA5', 'Booster for adolescents and adults', 'None', (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 780, 'DTPA6', 'Booster for adults over 65', 'None', (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 168, 'DTPA7', 'Booster for adults over 14', 'None', (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 2, 'Hib1', 'Recommended for infants', 'None', (SELECT id FROM vacune WHERE name = 'Haemophilus influenzae b Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 4, 'Hib2', 'Additional protection against Haemophilus influenzae b', 'None', (SELECT id FROM vacune WHERE name = 'Haemophilus influenzae b Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 11, 'Hib3', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Haemophilus influenzae b Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 12, 'Tv1', 'Recommended at 12 months', 'None', (SELECT id FROM vacune WHERE name = 'Sarampión, Rubeola, Parotiditis (MRP) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 36, 'Tv2', 'Booster at 3 years', 'None', (SELECT id FROM vacune WHERE name = 'Sarampión, Rubeola, Parotiditis (MRP) Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 0, 'HB1', 'Recommended for infants', 'None', (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 2, 'HB2', 'Primary vaccination series', 'None', (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 4, 'HB3', 'Additional protection against Hepatitis B', 'None', (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 11, 'HB4', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 2, 'MenB', 'Recommended at 2 months', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 4, 'MenB MenC', 'Additional protection against Meningococcal B and C', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 11, 'MenB MenC MenACWY', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 72, 'MenB MenC MenACWY', 'Booster at 6 years', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 15, 'VVZ1', 'Recommended at 15 months', 'None', (SELECT id FROM vacune WHERE name = 'Varicela (Chickenpox) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 36, 'VVZ2', 'Booster at 3 years', 'None', (SELECT id FROM vacune WHERE name = 'Varicela (Chickenpox) Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 144, 'VPH', 'Recommended at 12 years', 'None', (SELECT id FROM vacune WHERE name = 'Virus del Papiloma Humano (HPV) Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 2, 'VNC1', 'Recommended at 2 months', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 4, 'VNC2', 'Additional protection against Pneumococcal disease', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 11, 'VNC3', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 780, 'VNC4', 'Booster at 65 years', 'None', (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine'));

INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 0, 'Flu', 'Recommended for infants', 'None', (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 6, 'Annual Flu', 'Recommended at 6 months', 'None', (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 11, 'Annual Flu', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 12, 'Annual Flu', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 15, 'Annual Flu', 'Part of routine childhood immunization', 'None', (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 36, 'Annual Flu', 'Booster at 3 years', 'None', (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine'));
INSERT INTO calendar_moment (id, age, dosis_type, recomendations, discriminants, vacune_id) VALUES (UUID(), 780, 'Annual Flu', 'Booster at 65 years', 'None', (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine'));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES  (UUID(), '2023-01-15T08:30:00', 0, 'Administered Gripe (Influenza) Vaccine to a 0-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 0 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES  (UUID(), '2023-06-10T12:45:00', 6, 'Administered Gripe (Influenza) Vaccine to a 6-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 6 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES  (UUID(), '2023-11-20T18:30:00', 11, 'Administered Gripe (Influenza) Vaccine to an 11-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 11 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES  (UUID(), '2023-12-25T22:15:00', 12, 'Administered Gripe (Influenza) Vaccine to a 1-year-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 12 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES  (UUID(), '2023-03-15T04:45:00', 15, 'Administered Gripe (Influenza) Vaccine to a 1-year and 3-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 15 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES  (UUID(), '2024-12-01T10:30:00', 36, 'Administered Gripe (Influenza) Vaccine to a 3-year-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 36 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-15T10:00:00', 2, 'Administered Poliomielitis Vaccine to a 2-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-04-20T14:30:00', 4, 'Administered Poliomielitis Vaccine to a 4-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 4 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-11-10T16:45:00', 11, 'Administered Poliomielitis Vaccine to an 11-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 11 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2029-01-15T08:30:00', 72, 'Administered Poliomielitis Vaccine to a 6-year-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 72 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-01-20T11:15:00', 0, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to a 0-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 0 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-25T13:30:00', 2, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to a 2-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-04-15T15:45:00', 4, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to a 4-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 4 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-11-05T18:00:00', 11, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to an 11-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 11 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2029-01-20T10:30:00', 72, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to a 6-year-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 72 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2037-01-25T14:15:00', 168, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to a 14-year-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 168 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-28T09:45:00', 2, 'Administered Haemophilus influenzae b Vaccine to a 2-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Haemophilus influenzae b Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-04-05T11:30:00', 4, 'Administered Haemophilus influenzae b Vaccine to a 4-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 4 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Haemophilus influenzae b Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-11-15T14:15:00', 11, 'Administered Haemophilus influenzae b Vaccine to an 11-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 11 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Haemophilus influenzae b Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2024-01-12T10:30:00', 12, 'Administered Sarampión, Rubeola, Parotiditis (MRP) Vaccine to a 12-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 12 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Sarampión, Rubeola, Parotiditis (MRP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2025-01-15T12:45:00', 36, 'Administered Sarampión, Rubeola, Parotiditis (MRP) Vaccine to a 36-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 36 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Sarampión, Rubeola, Parotiditis (MRP) Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-01-02T09:00:00', 0, 'Administered Hepatitis B Vaccine to a 0-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 0 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-04-10T11:30:00', 4, 'Administered Hepatitis B Vaccine to a 4-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 4 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-15T14:15:00', 2, 'Administered Hepatitis B Vaccine to a 2-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-11-20T16:45:00', 11, 'Administered Hepatitis B Vaccine to an 11-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 11 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-28T10:30:00', 2, 'Administered Enfermedad Meningocócica Vaccine to a 2-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-04-05T12:45:00', 4, 'Administered Enfermedad Meningocócica Vaccine to a 4-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 4 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-11-15T16:15:00', 11, 'Administered Enfermedad Meningocócica Vaccine to an 11-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 11 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2029-01-15T14:30:00', 72, 'Administered Enfermedad Meningocócica Vaccine to a 6-year-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 72 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2024-04-15T11:00:00', 15, 'Administered Varicela (Chickenpox) Vaccine to a 15-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 15 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Varicela (Chickenpox) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2025-01-30T14:45:00', 36, 'Administered Varicela (Chickenpox) Vaccine to a 36-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 36 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Varicela (Chickenpox) Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2036-10-15T13:30:00', 144, 'Administered Virus del Papiloma Humano (HPV) Vaccine to a 144-month-old (12 years)', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 144 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Virus del Papiloma Humano (HPV) Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-28T10:30:00', 2, 'Administered Enfermedad Neumocócica Vaccine to a 2-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-04-05T12:45:00', 4, 'Administered Enfermedad Neumocócica Vaccine to a 4-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 4 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-11-15T16:15:00', 11, 'Administered Enfermedad Neumocócica Vaccine to an 11-month-old', 'maria@gmail.com', (SELECT id FROM calendar_moment WHERE age = 11 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine')));

INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-01-15 08:30:00', 0, 'Administered Gripe (Influenza) Vaccine to a 0-month-old', 'juan@gmail.com', (SELECT id FROM calendar_moment WHERE age = 0 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Gripe (Influenza) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-15 10:00:00', 2, 'Administered Poliomielitis Vaccine to a 2-month-old', 'juan@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Poliomielitis Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-01-20 11:15:00', 0, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to a 0-month-old', 'juan@gmail.com',(SELECT id FROM calendar_moment WHERE age = 0 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-25 13:30:00', 2, 'Administered Difteria, Tétanos, Tosferina (DTP) Vaccine to a 2-month-old', 'juan@gmail.com',(SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Difteria, Tétanos, Tosferina (DTP) Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-28 09:45:00', 2, 'Administered Haemophilus influenzae b Vaccine to a 2-month-old', 'juan@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Haemophilus influenzae b Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-01-02 09:00:00', 0, 'Administered Hepatitis B Vaccine to a 0-month-old', 'juan@gmail.com', (SELECT id FROM calendar_moment WHERE age = 0 AND vacune_id =  (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-15 14:15:00', 2, 'Administered Hepatitis B Vaccine to a 2-month-old', 'juan@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id =  (SELECT id FROM vacune WHERE name = 'Hepatitis B Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-28 10:30:00', 2, 'Administered Enfermedad Meningocócica Vaccine to a 2-month-old', 'juan@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Meningocócica Vaccine')));
INSERT INTO administration (id, date, age_to_administrate, notes, patient_email, calendar_moment_id) VALUES (UUID(), '2023-02-28 10:30:00', 2, 'Administered Enfermedad Neumocócica Vaccine to a 2-month-old', 'juan@gmail.com', (SELECT id FROM calendar_moment WHERE age = 2 AND vacune_id = (SELECT id FROM vacune WHERE name = 'Enfermedad Neumocócica Vaccine')));



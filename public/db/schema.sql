DROP TABLE IF EXISTS symptoms;
DROP TABLE IF EXSITS specialties;

CREATE TABLE specialties {
id    SERIAL        PRIMARY KEY,
name  VARCHAR(100)  NOT NULL
};

CREATE TABLE symptoms {
id                  SERIAL        PRIMARY KEY,
symptom             VARCHAR(100)  NOT NULL,
related_specialty   INTEGER       REFERENCES specialties
};

--1
INSERT INTO specialties (name) VALUES ('Allergy and Immunology');
--2
INSERT INTO specialties (name) VALUES ('Cardiology');
--3
--4 will add as another query value based on if the age is younger than
--20 or not
INSERT INTO specialties (name) VALUES ('Pediatrics');
--4
INSERT INTO specialties (name) VALUES ('Psychiatry');
--5
INSERT INTO specialties (name) VALUES ('Neurology');
--6
INSERT INTO specialties (name) VALUES ('Endocrinology');
--7
INSERT INTO specialties (name) VALUES ('Gastroenterology');
--8
--Sitting on this one
INSERT INTO specialties (name) VALUES ('General practice');
--9
INSERT INTO specialties (name) VALUES ('Infectious disease');
--10
INSERT INTO specialties (name) VALUES ('Radiology');
--11
INSERT INTO specialties (name) VALUES ('Nephrology');
--12
INSERT INTO specialties (name) VALUES ('Neurology');
--13
INSERT INTO specialties (name) VALUES ('Ophthalmology');
--14
INSERT INTO specialties (name) VALUES ('Dentistry');
--15
INSERT INTO specialties (name) VALUES ('Pulmonology');
--16
INSERT INTO specialties (name) VALUES ('Obstetrics and Gynaecology');
--17
INSERT INTO specialties (name) VALUES ('Dermatology');


--Allergy and Immunology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('sneeze',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('stuffy',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('allergies',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('allergy',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cough',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('runny',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('stuffy',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('allergic',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('anaphalactic',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('swelling',1);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('congestion',1);

--Cardiology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('chest',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('chest pain',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('heart',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('heartburn',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('heart attack',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cardiac',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('blood pressure',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('shortness of breath',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pain in arms',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('numbness in arms',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weakness in arms',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('coldness in arms',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pain in legs',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('numbness in legs',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weakness in legs',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('coldness in legs',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pain in chest',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('numbness in chest',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weakness in chest',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('coldness in chest',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pain in upper back',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('numbness upper back',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weakness in upper back',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('coldness in upper back',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pain in jaw',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('numbness jaw',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weakness jaw',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('coldness jaw',2);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('angina',2);

--Psychiatry
INSERT INTO symptoms (symptom,related_specialty) VALUES ('withdrawl',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('problems thinking',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('increased sensitivity',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('apathy',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('feeling disconnected',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('illogical thinking',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('nervousness',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cannot sleep',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('no appetitie',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('hunger',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('mood swings',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('depression',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('anxiety',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('attention span',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('confusion',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('memory loss',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('headache',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('hallucinations',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('compulsive',4);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('PTSD',4);

--Neurology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('paralysis',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('muscle weakness',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('loss of sensation',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('seizures',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('difficulty reading',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('difficulty writing',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('poor cognition',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('poor cognitive abilities',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('unexplained pain',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('decreased alertness',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('blackouts',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tiredness',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fatigue',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('sleep problems',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('poor memory',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('poor concentration',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dissociation',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dizziness',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('headache',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('low mood',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('facial spasm',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vision',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tremor',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('shaking',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('spasms',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('walking',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('slurred speech',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('jerk',5);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('twitching',5);

--Endocrinology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('lump',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('thickening',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pain persistant',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('anxiety',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('irritability',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('depression',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('confusion',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('nervousness',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fatigue',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fever',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('sweating',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('headaches',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('nausea',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vomiting',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('diarrhea',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('bathroom',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weight gain',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weight loss',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('jaundice',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('facial flushing',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('intestinal bleeding',6);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tumor',6);

--Gastroenterology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('acid reflux',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('heartburn',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('GERD',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dyspepsia',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('indigestion',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('nausea',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vomiting',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('peptic ulcer disease',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('abdominal pain',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('belching',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('bloating',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('flatulence',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('gallbladder',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pancreatitis',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pancreas',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('gallstone',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('constipation',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('defacation',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('acute diarrhea',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('chronic diarrhea',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('irritable bowel syndrome',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('IBS',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('hemorrhoids',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('anal',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('rectum',7);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('rectal',7);

--Infectious Disease
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fever',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('diarrhea',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fatigue',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('muscle aches',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('coughing',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('congestion',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fever',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('chills',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cough',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('sore throat',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('swollen lymph nodes',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('blood in urine',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pain',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('nausea',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vomiting',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fever',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('patchy skin',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('phlegm',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pus',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('boils',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('itch',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('difficulty breathing',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('urination pain',9);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pelvic pain',9);

--Radiology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('abdominal mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('lump',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('abdomin distension',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ankle pain',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('back pain',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('breat discharge',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('breast palpable mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('chest pain',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('chest pain',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dizziness',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vertigo',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dysphagia',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dyspnae',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('bulging',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('face',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('flank pain',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('headache',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('hearing loss',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('hematuria',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('neck mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('leg mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('arm mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('neck mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('head mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('polyarthralgia',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('scrotal mass',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vaginal bleeding',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tinnitus',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vision loss',10);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('renal insufficiency',10);

--Nephrology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('blood in urine',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('protein in urine',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('high blood pressure',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('kidney stone',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('low electrolytes',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fluid retention',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('kidney pain',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('lower back pain',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ankle swelling',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('leg swelling',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('frequent urination',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('no urination',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('paleness',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('weakness',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('itching',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('juandice',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('poor appetite',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('bad taste',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('foamy urine',11);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('confusion',11);

--Neurology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('Paralysis',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('muscle weakness',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('loss of sensation',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('no sensation',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('seizures',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('difficulty reading',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('difficulty writing',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('poor cognitive ability',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('unexplained pain',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('decreased alertness',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('headche',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('migraine',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('altered smell',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('altered taste',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('faint',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('lethargic',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('balance loss',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('balance issues',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tingling',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('paralysis',12);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('prickling',12);

--Opthalmology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('eye pain',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('hazy vision',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('blurred vision',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('double vision',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('seeing flashes',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('seeing spots',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('seeing rainbows',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('halos around lights',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('floating "spider webs"',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('curtain coming down',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cup filling up with ink',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('light sensitivity',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('light sensitive',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('swollen eyes',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('red eyes',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('iris',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('iris color',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('floaters',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('persistent floaters',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('itching eyes',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('burning eyes',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('discharge',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('change in vision',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('crusty',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dark spots',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dryness',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('drooping eyelid',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('limited movement of eyes',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('limited movement',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('eyelid',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('night vision',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tearing',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tunnel vision',13);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vision loss',13);

--Dentistry
INSERT INTO symptoms (symptom,related_specialty) VALUES ('toothache',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('jaw pain',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('mouth pain',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('sensitive teeth',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('bleeding gums',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('sore gums',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('bad breathe',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('jaw pain',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('jaw pop',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('jaw click',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('mouth sores',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('broken toothe',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cracked toothe',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('stained teeth',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('discolored teeth',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('stained',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('discolored',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('salivary',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('saliva',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tonsillitis',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('canker sores',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cold sores',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('thrush',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('oral',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cavity',14);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('plaque',14);

--Pulmonology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('lung',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cough',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('wheezing',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('mucus',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('shortness of breathe',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('asthma',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fatigue',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('mild fever',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('breathing',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('trouble breathing',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('breathe',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('smoking',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('chest pain',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cold',15);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('flu',15);

--Obstetrics and Gynaecology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vagina',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vaginal',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pelvic',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('urethra',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('uterine',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ovaries',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vaginal tumors',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ovary lesions',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('contraception',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dysmenorrhea',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pregnant',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pregnancy',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('fallopian tube',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('menopause',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ovarian cyst',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('miscarriage',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vulva',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('labia',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ovarian cancer',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('uterine cancer',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('vaginal cancer',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('genital herpes',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('labor',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('breech',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('renal',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('UTI',16);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('Urinary Tract Infection',16);

--Dermatology
INSERT INTO symptoms (symptom,related_specialty) VALUES ('skin',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('boils',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('lesions',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('bumps',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('hives',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('discoloration',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('different colors',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('burning',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('flake',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('flaking',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('flakey',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pus',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('scale',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('dryness',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('rough patch',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('lips',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ears',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('rash',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('disc-shaped rash',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('ring shapes',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('acne',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('pimples',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('whiteheads',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('blackheads',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('cysts',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('skin infection',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('guttate',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('postules',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('burns',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('rosacea',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('flushed',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('skin flushing',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('greasy',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('oily',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('welts',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('oozing',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('crustiness',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('crusty',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('blisters',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('open skin',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('itchy skin',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('tender',17);
INSERT INTO symptoms (symptom,related_specialty) VALUES ('wart',17);










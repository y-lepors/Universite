DELETE FROM UFR_has_DEPARTEMENT;
DELETE FROM EFFECTIF;
DELETE FROM FORMATION;

DELETE FROM DEMOGRAPHIQUE;

DELETE FROM PARCOURS;
DELETE FROM DEPARTEMENT;
DELETE FROM UFR;


-- Création des UFR :

INSERT INTO UFR(idUFR, nomUFR, nomUFR_Court) VALUES(1, "UFR Science", "UFRsc");
INSERT INTO UFR(idUFR, nomUFR, nomUFR_Court) VALUES(2, "UFR LETTRE", "UFRLe");
INSERT INTO UFR(idUFR, nomUFR, nomUFR_Court) VALUES(3, "UFR DROIT", "UFRDe");

-- CREATION DES DEPARTEMENT

INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(1, "INFORMATIQUE");
INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(2, "PHYSIQUE");
INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(3, "SVT");

INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(4, "LETTRE MODERNE");
INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(5, "THEATRE");
INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(6, "PSYCHO");

INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(7, "ECONOMIE");
INSERT INTO DEPARTEMENT(idDepartement,nomDepartement) VALUES(8, "DROIT");

-- LIAISON DEPARTEMENT  ->  UFR
INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(1,1);
INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(1,2);
INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(1,3);

INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(2,4);
INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(2,5);
INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(2,6);

INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(3,7);
INSERT INTO UFR_has_DEPARTEMENT(UFR_idUFR,DEPARTEMENT_idDepartement) VALUES(3,8);

-- CREATION DES PARCOURS

INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(1,"Informatique - Physique - Maths", "MPI");
INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(2,"Informatique", "Info");
INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(3,"Ingenierie Informatique", "II");
INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(4,"TILL", "TILL");


INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(6,"Physique - SVT", "PS");
INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(7,"Physique", "Physique");
INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(8,"Science et vie de la terre", "SVT");

INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(9,"Lettre Moderne", "Lettre Moderne");

INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(10,"Theatre", "Theatre");

INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(11,"Psychologie", "Psycho");

INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(12,"Economie", "Eco");

INSERT INTO PARCOURS(idParcours, nomParcours, nomParcours_Court) VALUES(13,"Droit", "Droit");





-- CREATION DES FORMATION

INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(1,"1","Licence",1,1);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(2,"2","Licence",1,2);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(3,"3","Licence",1,3);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(4,"1","Master",1,4);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(5,"2","Master",1,4);

INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(6,"1","Licence",2,6);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(7,"2","Licence",2,6);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(8,"3","Licence",2,7);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(9,"1","Master",2,7);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(10,"2","Master",2,7);


INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(13,"3","Licence",3,8);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(14,"1","Master",3,8);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(15,"2","Master",3,8);



INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(16,"1","Licence",4,9);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(17,"2","Licence",4,9);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(18,"3","Licence",4,9);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(19,"1","Master",4,9);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(20,"2","Master",4,9);

INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(21,"1","Licence",5,10);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(22,"2","Licence",5,10);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(23,"3","Licence",5,10);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(24,"1","Master",5,10);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(25,"2","Master",5,10);

INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(26,"1","Licence",6,11);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(27,"2","Licence",6,11);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(28,"3","Licence",6,11);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(29,"1","Master",6,11);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(30,"2","Master",6,11);



INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(31,"1","Licence",7,12);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(32,"2","Licence",7,12);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(33,"3","Licence",7,12);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(34,"1","Master",7,12);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(35,"2","Master",7,12);

INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(36,"1","Licence",8,13);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(37,"2","Licence",8,13);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(38,"3","Licence",8,13);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(39,"1","Master",8,13);
INSERT INTO FORMATION(idFormation,niveau,type,DEPARTEMENT_idDepartement, PARCOURS_idParcours) VALUES(40,"2","Master",8,13);

-- CREATION DES EFFECTIFS

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(1, "2016", 300,1);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(2, "2016", 250,2);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(3, "2016", 150,3);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(4, "2016", 50,4);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(5, "2016", 50,5);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(6, "2017", 250,1);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(7, "2017", 200,2);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(8, "2017", 100,3);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(9, "2017", 80,4);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(10, "2017", 80,5);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(11, "2018", 330,1);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(12, "2018", 250,2);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(13, "2018", 200,3);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(14, "2018", 100,4);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(15, "2018", 100,5);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(16, "2019", 200,1);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(17, "2019", 200,2);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(18, "2019", 180,3);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(19, "2019", 90,4);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(20, "2019", 90,5);




INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(21, "2016", 100,6);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(22, "2016", 220,7);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(23, "2016", 150,8);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(24, "2016", 90,9);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(25, "2016", 80,10);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(26, "2017", 320,6);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(27, "2017", 210,7);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(28, "2017", 190,8);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(29, "2017", 150,9);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(30, "2017", 150,10);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(31, "2018", 300,6);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(32, "2018", 250,7);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(33, "2018", 150,8);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(34, "2018", 50,9);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(35, "2018", 50,10);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(36, "2019", 300,6);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(37, "2019", 250,7);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(38, "2019", 150,8);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(39, "2019", 50,9);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(40, "2019", 50,10);



INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(43, "2016", 150,13);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(44, "2016", 50,14);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(45, "2016", 80,15);


INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(48, "2017", 400,13);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(49, "2017", 84,14);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(50, "2017", 56,15);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(53, "2018", 220,13);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(54, "2018", 190,14);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(55, "2018", 100,15);


INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(58, "2019", 140,13);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(59, "2019", 190,14);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(60, "2019", 200,15);




INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(61, "2016", 120,16);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(62, "2016", 200,17);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(63, "2016", 150,18);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(64, "2016", 90,19);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(65, "2016", 80,20);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(66, "2017", 120,16);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(67, "2017", 200,17);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(68, "2017", 150,18);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(69, "2017", 90,19);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(70, "2017", 80,20);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(121, "2018", 130,16);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(122, "2018", 240,17);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(123, "2018", 110,18);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(124, "2018", 80,19);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(125, "2018", 30,20);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(71, "2019", 140,16);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(72, "2019", 230,17);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(73, "2019", 110,18);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(74, "2019", 100,19);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(75, "2019", 90,20);




INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(76, "2016", 125,21);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(77, "2016", 250,22);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(78, "2016", 150,23);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(79, "2016", 90,24);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(80, "2016", 80,25);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(81, "2017", 125,21);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(82, "2017", 250,22);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(83, "2017", 250,23);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(84, "2017", 190,24);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(85, "2017", 87,25);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(86, "2018", 120,21);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(87, "2018", 110,22);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(88, "2018", 113,23);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(89, "2018", 90,24);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(90, "2018", 40,25);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(91, "2019", 240,21);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(92, "2019", 230,22);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(93, "2019", 410,23);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(94, "2019", 500,24);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(95, "2019", 220,25);



INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(130, "2016", 135,26);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(131, "2016", 210,27);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(132, "2016", 120,28);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(133, "2016", 900,29);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(134, "2016", 120,30);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(135, "2017", 125,26);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(136, "2017", 250,27);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(137, "2017", 130,28);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(138, "2017", 90,29);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(139, "2017", 20,30);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(140, "2018", 325,26);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(141, "2018", 250,27);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(142, "2018", 150,28);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(143, "2018", 40,29);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(144, "2018", 80,30);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(145, "2019", 425,26);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(146, "2019", 450,27);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(147, "2019", 350,28);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(148, "2019", 330,29);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(149, "2019", 32,30);




INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(181, "2016", 135,31);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(182, "2016", 210,32);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(183, "2016", 120,33);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(184, "2016", 900,34);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(185, "2016", 120,35);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(186, "2017", 135,31);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(187, "2017", 210,32);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(188, "2017", 120,33);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(189, "2017", 900,34);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(190, "2017", 120,35);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(191, "2018", 135,31);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(192, "2018", 210,32);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(193, "2018", 120,33);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(194, "2018", 900,34);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(195, "2018", 120,35);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(96, "2019", 135,31);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(97, "2019", 210,32);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(98, "2019", 120,33);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(99, "2019", 900,34);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(100, "2019", 120,35);


INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(101, "2016", 135,36);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(102, "2016", 210,37);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(103, "2016", 120,38);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(104, "2016", 900,39);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(105, "2016", 120,40);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(106, "2017", 135,36);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(107, "2017", 210,37);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(108, "2017", 130,38);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(109, "2017", 940,39);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(110, "2017", 120,40);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(111, "2018", 115,36);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(112, "2018", 224,37);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(113, "2018", 124,38);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(114, "2018", 200,39);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(115, "2018", 320,40);

INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(116, "2019", 155,36);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(117, "2019", 230,37);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(118, "2019", 120,38);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(119, "2019", 450,39);
INSERT INTO EFFECTIF(idEffectif, anneeRef, effectif, FORMATION_idFormation) VALUES(120, "2019", 130,40);



INSERT INTO DEMOGRAPHIQUE VALUES(1, 18, 2016, 150);
INSERT INTO DEMOGRAPHIQUE VALUES(2, 18, 2017, 180);
INSERT INTO DEMOGRAPHIQUE VALUES(3, 18, 2018, 230);
INSERT INTO DEMOGRAPHIQUE VALUES(4, 18, 2019, 200);





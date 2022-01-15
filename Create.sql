-- MySQL Script generated by MySQL Workbench
-- Thu Nov 25 14:02:32 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP TABLE IF EXISTS `zil3-zle_porya`.`UFR_has_DEPARTEMENT` ;

DROP TABLE IF EXISTS `zil3-zle_porya`.`DEMOGRAPHIQUE` ;

DROP TABLE IF EXISTS `zil3-zle_porya`.`PARCOURS` ;

DROP TABLE IF EXISTS `zil3-zle_porya`.`FORMATION` ;

DROP TABLE IF EXISTS `zil3-zle_porya`.`EFFECTIF` ;

DROP TABLE IF EXISTS `zil3-zle_porya`.`DEPARTEMENT` ;


-- -----------------------------------------------------
-- Schema zil3-zle_porya
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema zil3-zle_porya
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zil3-zle_porya` DEFAULT CHARACTER SET utf8 ;
USE `zil3-zle_porya` ;

-- -----------------------------------------------------
-- Table `zil3-zle_porya`.`PARCOURS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zil3-zle_porya`.`PARCOURS` ;

CREATE TABLE IF NOT EXISTS `zil3-zle_porya`.`PARCOURS` (
  `idParcours` INT NOT NULL,
  `nomParcours` VARCHAR(50) NOT NULL,
  `nomParcours_Court` VARCHAR(45) NULL,
  PRIMARY KEY (`idParcours`));


-- -----------------------------------------------------
-- Table `zil3-zle_porya`.`DEPARTEMENT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zil3-zle_porya`.`DEPARTEMENT` ;

CREATE TABLE IF NOT EXISTS `zil3-zle_porya`.`DEPARTEMENT` (
  `idDepartement` INT NOT NULL,
  `nomDepartement` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idDepartement`));


-- -----------------------------------------------------
-- Table `zil3-zle_porya`.`FORMATION`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zil3-zle_porya`.`FORMATION` ;

CREATE TABLE IF NOT EXISTS `zil3-zle_porya`.`FORMATION` (
  `idFormation` INT NOT NULL,
  `niveau` VARCHAR(50) NOT NULL,
  `type` VARCHAR(50) NOT NULL,
  `DEPARTEMENT_idDepartement` INT NOT NULL,
  `PARCOURS_idParcours` INT NOT NULL,
  PRIMARY KEY (`idFormation`),
  INDEX `fk_FORMATION_DEPARTEMENT1_idx` (`DEPARTEMENT_idDepartement` ASC),
  INDEX `fk_FORMATION_PARCOURS1_idx` (`PARCOURS_idParcours` ASC),
  CONSTRAINT `fk_FORMATION_DEPARTEMENT1`
    FOREIGN KEY (`DEPARTEMENT_idDepartement`)
    REFERENCES `zil3-zle_porya`.`DEPARTEMENT` (`idDepartement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FORMATION_PARCOURS1`
    FOREIGN KEY (`PARCOURS_idParcours`)
    REFERENCES `zil3-zle_porya`.`PARCOURS` (`idParcours`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `zil3-zle_porya`.`UFR`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zil3-zle_porya`.`UFR` ;

CREATE TABLE IF NOT EXISTS `zil3-zle_porya`.`UFR` (
  `idUFR` INT NOT NULL,
  `nomUFR` VARCHAR(50) NOT NULL,
  `nomUFR_Court` VARCHAR(25) NULL,
  PRIMARY KEY (`idUFR`));


-- -----------------------------------------------------
-- Table `zil3-zle_porya`.`EFFECTIF`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zil3-zle_porya`.`EFFECTIF` ;

CREATE TABLE IF NOT EXISTS `zil3-zle_porya`.`EFFECTIF` (
  `idEffectif` INT NOT NULL,
  `anneeRef` VARCHAR(4) NOT NULL,
  `effectif` INT NOT NULL,
  `FORMATION_idFormation` INT NOT NULL,
  PRIMARY KEY (`idEffectif`),
  INDEX `fk_EFFECTIF_FORMATION1_idx` (`FORMATION_idFormation` ASC),
  CONSTRAINT `fk_EFFECTIF_FORMATION1`
    FOREIGN KEY (`FORMATION_idFormation`)
    REFERENCES `zil3-zle_porya`.`FORMATION` (`idFormation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `zil3-zle_porya`.`DEMOGRAPHIQUE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zil3-zle_porya`.`DEMOGRAPHIQUE` ;

CREATE TABLE IF NOT EXISTS `zil3-zle_porya`.`DEMOGRAPHIQUE` (
  `idDemo` INT NOT NULL,
  `Age` INT NOT NULL,
  `AnneeDemo` VARCHAR(4) NULL,
  `nbPersonnes` INT NULL,
  PRIMARY KEY (`idDemo`));


-- -----------------------------------------------------
-- Table `zil3-zle_porya`.`UFR_has_DEPARTEMENT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zil3-zle_porya`.`UFR_has_DEPARTEMENT` ;

CREATE TABLE IF NOT EXISTS `zil3-zle_porya`.`UFR_has_DEPARTEMENT` (
  `UFR_idUFR` INT NOT NULL,
  `DEPARTEMENT_idDepartement` INT NOT NULL,
  PRIMARY KEY (`UFR_idUFR`, `DEPARTEMENT_idDepartement`),
  INDEX `fk_UFR_has_DEPARTEMENT_DEPARTEMENT1_idx` (`DEPARTEMENT_idDepartement` ASC),
  INDEX `fk_UFR_has_DEPARTEMENT_UFR1_idx` (`UFR_idUFR` ASC),
  CONSTRAINT `fk_UFR_has_DEPARTEMENT_UFR1`
    FOREIGN KEY (`UFR_idUFR`)
    REFERENCES `zil3-zle_porya`.`UFR` (`idUFR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UFR_has_DEPARTEMENT_DEPARTEMENT1`
    FOREIGN KEY (`DEPARTEMENT_idDepartement`)
    REFERENCES `zil3-zle_porya`.`DEPARTEMENT` (`idDepartement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
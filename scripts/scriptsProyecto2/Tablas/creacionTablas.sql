
-- -----------------------------------------------------
-- Table `proyecto2`.`Familia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Familia` (
  `idFamilia` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFamilia`),
  UNIQUE INDEX `idFamilia_UNIQUE` (`idFamilia` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Pais` (
  `idPais` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPais`),
  UNIQUE INDEX `idPais_UNIQUE` (`idPais` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`Provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Provincia` (
  `idProvincia` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `id_pais` INT NULL,
  PRIMARY KEY (`idProvincia`),
  UNIQUE INDEX `idProvincia_UNIQUE` (`idProvincia` ASC),
  INDEX `ProvinciaXPais_idx` (`id_pais` ASC),
  CONSTRAINT `ProvinciaXPais`
    FOREIGN KEY (`id_pais`)
    REFERENCES `proyecto2`.`Pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Canton`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Canton` (
  `idCanton` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `id_provincia` INT NULL,
  PRIMARY KEY (`idCanton`),
  UNIQUE INDEX `idCanton_UNIQUE` (`idCanton` ASC),
  INDEX `CantonXProvincia_idx` (`id_provincia` ASC),
  CONSTRAINT `CantonXProvincia`
    FOREIGN KEY (`id_provincia`)
    REFERENCES `proyecto2`.`Provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Distrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Distrito` (
  `idDistrito` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `id_canton` INT NULL,
  PRIMARY KEY (`idDistrito`),
  UNIQUE INDEX `idDistrito_UNIQUE` (`idDistrito` ASC),
  INDEX `DistritoXCanton_idx` (`id_canton` ASC),
  CONSTRAINT `DistritoXCanton`
    FOREIGN KEY (`id_canton`)
    REFERENCES `proyecto2`.`Canton` (`idCanton`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `user` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `idUsuario_UNIQUE` (`idUsuario` ASC))
  UNIQUE INDEX `user`
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Persona` (
  `idPersona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidoUno` VARCHAR(45) NULL,
  `apellidoDos` VARCHAR(45) NULL,
  `cedula` VARCHAR(45) NULL,
  `correo` VARCHAR(45) NULL,
  `foto` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `id_distrito` INT NULL,
  `id_usuario` INT NULL,
  PRIMARY KEY (`idPersona`),
  UNIQUE INDEX `idPersona_UNIQUE` (`idPersona` ASC),
  INDEX `PersonaXDistrito_idx` (`id_distrito` ASC),
  INDEX `UsuarioXPersona_idx` (`id_usuario` ASC),
  CONSTRAINT `PersonaXDistrito`
    FOREIGN KEY (`id_distrito`)
    REFERENCES `proyecto2`.`Distrito` (`idDistrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `UsuarioXPersona`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `proyecto2`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`Estilo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Estilo` (
  `idEstilo` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `id_familia` INT NULL,
  PRIMARY KEY (`idEstilo`),
  UNIQUE INDEX `idEstilo_UNIQUE` (`idEstilo` ASC),
  INDEX `FamiliaXEstilo_idx` (`id_familia` ASC),
  CONSTRAINT `FamiliaXEstilo`
    FOREIGN KEY (`id_familia`)
    REFERENCES `proyecto2`.`Familia` (`idFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Fabricante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Fabricante` (
  `idFabricante` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFabricante`),
  UNIQUE INDEX `idFabricante_UNIQUE` (`idFabricante` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Cuerpo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Cuerpo` (
  `idCuerpo` INT NOT NULL AUTO_INCREMENT,
  `descrpcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCuerpo`),
  UNIQUE INDEX `idCuerpo_UNIQUE` (`idCuerpo` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Color` (
  `idColor` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idColor`),
  UNIQUE INDEX `idColor_UNIQUE` (`idColor` ASC))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`TipoFermentacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`TipoFermentacion` (
  `idTipoFermentacion` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoFermentacion`),
  UNIQUE INDEX `idTipoFermentacion_UNIQUE` (`idTipoFermentacion` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Cerveza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Cerveza` (
  `id_Cerveza` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `precio` FLOAT NULL,
  `caracteristicas` VARCHAR(45) NULL,
  `alcohol` INT NULL,
  `amargo` VARCHAR(45) NULL,
  `temperatura` VARCHAR(45) NULL,
  `tiempoFermentacion` VARCHAR(45) NULL,
  `id_estilo` INT NOT NULL,
  `id_fabricante` INT NULL,
  `id_cuerpo` INT NULL,
  `id_color` INT NULL,
  `id_tipo_fermentacion` INT NULL,
  PRIMARY KEY (`id_Cerveza`),
  UNIQUE INDEX `idTipoCerveza_UNIQUE` (`id_Cerveza` ASC),
  INDEX `EstiloXCerveza_idx` (`id_estilo` ASC),
  INDEX `CervezaXFabricante_idx` (`id_fabricante` ASC),
  INDEX `CuerpoXCerveza_idx` (`id_cuerpo` ASC),
  INDEX `ColorXCerveza_idx` (`id_color` ASC),
  INDEX `FermentacionXCerveza_idx` (`id_tipo_fermentacion` ASC),
  CONSTRAINT `EstiloXCerveza`
    FOREIGN KEY (`id_estilo`)
    REFERENCES `proyecto2`.`Estilo` (`idEstilo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CervezaXFabricante`
    FOREIGN KEY (`id_fabricante`)
    REFERENCES `proyecto2`.`Fabricante` (`idFabricante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CuerpoXCerveza`
    FOREIGN KEY (`id_cuerpo`)
    REFERENCES `proyecto2`.`Cuerpo` (`idCuerpo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ColorXCerveza`
    FOREIGN KEY (`id_color`)
    REFERENCES `proyecto2`.`Color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FermentacionXCerveza`
    FOREIGN KEY (`id_tipo_fermentacion`)
    REFERENCES `proyecto2`.`TipoFermentacion` (`idTipoFermentacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`Comprador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Comprador` (
  `idComprador` INT NOT NULL,
  `pseudonimo` VARCHAR(45) NULL,
  PRIMARY KEY (`idComprador`),
  UNIQUE INDEX `idComprador_UNIQUE` (`idComprador` ASC),
  CONSTRAINT `id_persona`
    FOREIGN KEY (`idComprador`)
    REFERENCES `proyecto2`.`Persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`Compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Compra` (
  `id_comprador` INT NOT NULL,
  `id_cerveza` INT NOT NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`id_comprador`, `id_cerveza`),
  CONSTRAINT `CompraXComprador`
    FOREIGN KEY (`id_comprador`)
    REFERENCES `proyecto2`.`Comprador` (`idComprador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CompraXCerveza`
    FOREIGN KEY (`id_cerveza`)
    REFERENCES `proyecto2`.`Cerveza` (`id_Cerveza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Empleado` (
  `idEmpleado` INT NOT NULL,
  `carnet` VARCHAR(45) NULL,
  UNIQUE INDEX `idEmpleado_UNIQUE` (`idEmpleado` ASC),
  PRIMARY KEY (`idEmpleado`),
  CONSTRAINT `id_persona_Empleado`
    FOREIGN KEY (`idEmpleado`)
    REFERENCES `proyecto2`.`Persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `proyecto2`.`TipoUsuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`TipoUsuario` (
  `idTipoUsuario` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `id_usuario` INT NULL,
  PRIMARY KEY (`idTipoUsuario`),
  UNIQUE INDEX `idTipoUsuario_UNIQUE` (`idTipoUsuario` ASC),
  INDEX `UsuarioXTipo_idx` (`id_usuario` ASC),
  CONSTRAINT `UsuarioXTipo`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `proyecto2`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `proyecto2`.`Gusto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto2`.`Gusto` (
  `id_comprador` INT NOT NULL,
  `id_cerveza` INT NOT NULL,
  PRIMARY KEY (`id_comprador`, `id_cerveza`),
  INDEX `GustoXCerveza_idx` (`id_cerveza` ASC),
  CONSTRAINT `CompradorXGusto`
    FOREIGN KEY (`id_comprador`)
    REFERENCES `proyecto2`.`Comprador` (`idComprador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `GustoXCerveza`
    FOREIGN KEY (`id_cerveza`)
    REFERENCES `proyecto2`.`Cerveza` (`id_Cerveza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

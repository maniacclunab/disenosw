-- --------------------------------------------------------
-- Host:                         131.72.236.108
-- Versión del servidor:         5.7.31 - MySQL Community Server (GPL)
-- SO del servidor:              Linux
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para systimec_pato
CREATE DATABASE IF NOT EXISTS `systimec_pato` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `systimec_pato`;

-- Volcando estructura para tabla systimec_pato.Camion
CREATE TABLE IF NOT EXISTS `Camion` (
  `idCamion` int(11) NOT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `Modelo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCamion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_pato.Chofer
CREATE TABLE IF NOT EXISTS `Chofer` (
  `idChofer` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idChofer`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_pato.Cliente
CREATE TABLE IF NOT EXISTS `Cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Fono` varchar(9) DEFAULT NULL,
  `Comuna` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_pato.Peoneta
CREATE TABLE IF NOT EXISTS `Peoneta` (
  `idPeoneta` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPeoneta`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_pato.Retiro
CREATE TABLE IF NOT EXISTS `Retiro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) NOT NULL,
  `IdCamion` int(11) NOT NULL,
  `IdSucursal` int(11) NOT NULL,
  `IdChofer` int(11) NOT NULL,
  `IdPeoneta` int(11) NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Comuna` varchar(45) DEFAULT NULL,
  `Detalle_residuo` varchar(45) DEFAULT NULL,
  `Peso_residuo` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`id`,`IdCliente`,`IdCamion`,`IdSucursal`,`IdChofer`,`IdPeoneta`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='	';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla systimec_pato.Sucursal
CREATE TABLE IF NOT EXISTS `Sucursal` (
  `IdSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Fono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdSucursal`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='	';

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

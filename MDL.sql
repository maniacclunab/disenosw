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

-- Volcando datos para la tabla systimec_pato.Camion: 3 rows
/*!40000 ALTER TABLE `Camion` DISABLE KEYS */;
INSERT INTO `Camion` (`idCamion`, `Marca`, `Modelo`) VALUES
	(0, 'Volvo', 'a1'),
	(1, 'Volvo', 'a1'),
	(2, 'Toyota', 'a2');
/*!40000 ALTER TABLE `Camion` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_pato.Chofer: 1 rows
/*!40000 ALTER TABLE `Chofer` DISABLE KEYS */;
INSERT INTO `Chofer` (`idChofer`, `Nombre`, `Apellido`) VALUES
	(1, 'Patricio', 'Ortiz');
/*!40000 ALTER TABLE `Chofer` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_pato.Cliente: 4 rows
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` (`idCliente`, `Nombre`, `Direccion`, `Fono`, `Comuna`, `Email`) VALUES
	(1, 'Patricio', 'Mexico', '123455', 'La Florida', 'pato@pato.cl'),
	(2, 'Catalina', 'Mexico', '9374829', 'Las Condes', 'cata@cata.cl'),
	(3, 'Javiera', 'Mexico', '932929', 'Providencia', 'javi@javi.cl'),
	(4, 'Marcela', 'Mexico', '133', 'La Dehesa', 'marce@marce.cl');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_pato.Peoneta: 1 rows
/*!40000 ALTER TABLE `Peoneta` DISABLE KEYS */;
INSERT INTO `Peoneta` (`idPeoneta`, `Nombre`, `Apellido`) VALUES
	(1, 'Hector', 'Super H');
/*!40000 ALTER TABLE `Peoneta` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_pato.Retiro: 4 rows
/*!40000 ALTER TABLE `Retiro` DISABLE KEYS */;
INSERT INTO `Retiro` (`id`, `IdCliente`, `IdCamion`, `IdSucursal`, `IdChofer`, `IdPeoneta`, `Direccion`, `Comuna`, `Detalle_residuo`, `Peso_residuo`, `Fecha`, `hora`) VALUES
	(1, 1, 1, 1, 1, 1, 'Calle 1', 'La Florda', 'Papel', 10, '2020-09-29', '10:00:00'),
	(2, 2, 1, 1, 1, 1, 'Calle 2', 'La florida', 'papel', 5, '2020-09-30', '11:00:00'),
	(3, 1, 1, 1, 1, 1, 'Calle1', 'La Florida', 'carton', 50, '2020-10-01', '10:00:00'),
	(4, 1, 1, 1, 1, 1, 'Calle 1', 'La florida', 'latas', 100, '2020-10-02', '10:00:00');
/*!40000 ALTER TABLE `Retiro` ENABLE KEYS */;

-- Volcando datos para la tabla systimec_pato.Sucursal: 2 rows
/*!40000 ALTER TABLE `Sucursal` DISABLE KEYS */;
INSERT INTO `Sucursal` (`IdSucursal`, `Nombre`, `Direccion`, `Ciudad`, `Fono`) VALUES
	(1, 'Sucursal 1', 'mexico', 'Santiago', '123'),
	(2, 'Sucursal 2', 'Mexico', 'Santiago', '456');
/*!40000 ALTER TABLE `Sucursal` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

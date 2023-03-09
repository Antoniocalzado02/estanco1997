-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlDawes:3306
-- Tiempo de generación: 09-03-2023 a las 01:06:17
-- Versión del servidor: 5.7.22
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estanco1997AntonioCalzado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Vapes', 'LOS VAPES TE DEJAN SIN PELO -->'),
(2, 'SA', 'Songist'),
(3, 'OC', 'Wanek'),
(4, 'AC', 'This is the demo for tabaccos'),
(5, 'NA', 'Summers'),
(6, 'AF', 'McAuslene'),
(7, 'KL', 'Tobacco is very import in the world'),
(8, 'AS', 'Sinnat'),
(9, 'EU', 'Bollen'),
(11, 'winstom', 'el tabaco de moda'),
(12, 'chester', 'el tabaco de moda'),
(13, 'dasssa', 'dasdsadasddas'),
(14, 'el nuevo tabco', 'tabaco de la chinchina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `iva` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase`
--

CREATE TABLE `purchase` (
  `id_order` int(50) NOT NULL,
  `material_code` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabaco`
--

CREATE TABLE `tabaco` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `stock` int(50) DEFAULT '50'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabaco`
--

INSERT INTO `tabaco` (`id`, `name`, `description`, `price`, `category`, `stock`) VALUES
(1, 'lo feo tienen mi foto', 'anuell brrr aah', '12.00', 1, 20),
(4, 'Gembucsket', 'Fetomaternal placental transfusion syndrome', '19.57', 5, 83),
(5, 'Redhold', 'Soft tissue disorders related to use, overuse and pressure', '63.23', 1, 59),
(6, 'Opela', 'Contact with knife, undetermined intent, sequela', '47.00', 7, 83),
(7, 'Zontrax', 'Broken internal joint prosthesis', '29.16', 8, 27),
(8, 'Hatity', 'Nondisp commnt fx shaft of unsp fibula, 7thK', '20.78', 8, 80),
(9, 'Konklab', 'Other specified pleural conditions', '92.06', 8, 8),
(11, 'Holdlamis', 'Displacement of other vascular grafts, subsequent encounter', '8.71', 3, 42),
(12, 'Bitwolf', 'Disp fx of epiphy (separation) (upper) of l femr, 7thQ', '89.90', 2, 95),
(13, 'Greenlam', 'Oth comp of anesthesia during pregnancy, unsp trimester', '35.26', 1, 100),
(15, 'Bitwoslf', 'Blister (nonthermal) of right upper arm, initial encounter', '24.40', 1, 36),
(16, 'Gembucket', 'Pnctr w/o fb of l idx fngr w damage to nail, sequela', '44.55', 7, 11),
(17, 'Keylex', 'Senile entropion of left upper eyelid', '29.81', 4, 33),
(18, 'Cardguard', 'Contus/lac left cerebrum w LOC of 6-24 hrs, sequela', '1.20', 2, 88),
(20, 'Konklux', 'Poisoning by other narcotics, undetermined', '56.71', 4, 13),
(23, 'Y-Solowarm', 'Maternal care for malpresentation of fetus', '66.76', 4, 16),
(24, 'Solarbreeze', 'Muscle wasting and atrophy, NEC, left upper arm', '79.08', 3, 11),
(25, 'Otdcom', 'Osseous stenosis of neural canal', '55.53', 4, 82),
(26, 'Zoolab', 'Drown d/t being thrown ovrbrd by motion of fish boat, init', '97.17', 8, 100),
(27, 'Bitchip', 'Unspecified fracture of unspecified foot', '7.82', 8, 22),
(28, 'Andalax', 'Oth fx shaft of unsp femur, subs for clos fx w nonunion', '32.58', 7, 88),
(29, 'Flexidy', 'Fetal anemia and thrombocytopenia, first trimester, fetus 3', '73.89', 1, 3),
(31, 'Stringtough', 'Nondisp fx of anterior wall of left acetabulum, sequela', '6.49', 8, 88),
(32, 'Toughjoyfax', 'Obs & eval of NB for oth suspected condition ruled out', '85.13', 1, 38),
(33, 'Otcom', 'Monoplg low lmb following unsp cerebrovascular disease', '3.36', 3, 81),
(34, 'Fixflfex', 'Mtrcy passenger injured in collision w unsp mv in traf, init', '77.83', 4, 63),
(36, 'Alphazap', 'Suprcndl fracture w intrcndl extension of lower end of femur', '59.33', 3, 81),
(37, 'Namfix', 'Fatigue fracture of vertebra, lumbosacral region, sqla', '5.35', 8, 44),
(39, 'Kanlam', 'Poisoning by peripheral vasodilators, accidental, init', '48.86', 8, 28),
(40, 'Vagram', 'Milt op involving oth firearms discharge, civilian, subs', '47.12', 3, 57),
(41, 'Trippledex', 'Oth and unsp adhes and disruptions of iris and ciliary body', '44.16', 3, 92),
(42, 'Tin', 'Unsp bus occupant injured in collision w oth mv in traf', '36.65', 1, 5),
(44, 'Rank', 'Laceration of deep palmar arch of unsp hand, init encntr', '28.89', 9, 47),
(45, 'Veribet', 'Lac w/o fb of abd wall, epigst rgn w penet perit cav, init', '17.65', 6, 11),
(46, 'Transcof', 'Unspecified injury of spleen, initial encounter', '17.03', 5, 10),
(47, 'Fixflex', 'Oth traum displ spondylolysis of 7th cervcal vert, 7thB', '89.29', 2, 26),
(48, 'Pannier', 'Oth comp specific to multiple gest, second tri, fetus 1', '32.20', 8, 4),
(49, 'Latlux', 'Intracranial laceration and hemorrhage due to birth injury', '75.21', 6, 42),
(50, 'Bamity', 'Laceration with foreign body, right hip', '89.91', 8, 89),
(51, 'Asoka', 'Accidental pnctr & lac of a respiratory system org dur proc', '65.97', 2, 36),
(53, 'Ronstring', 'Aneurysm of artery of lower extremity', '45.70', 1, 28),
(54, 'Bigtax', 'Sadomasochism, unspecified', '16.85', 4, 39),
(56, 'Strinfgtough', 'Disp fx of hook pro of hamate bone, r wrs, 7thP', '11.03', 8, 65),
(57, 'Cardaify', 'Neoplasm of uncertain behavior of oth female genital organs', '83.64', 1, 78),
(58, 'Aerifgied', 'Nondisp fx of posterior process of right talus, init', '60.76', 5, 16),
(59, 'Lothlux', 'Osteochondritis dissecans of ankle and joints of foot', '11.33', 3, 24),
(60, 'Alpjhazap', 'Laceration w fb of l mid finger w/o damage to nail, sequela', '39.41', 5, 56),
(61, 'Vagrame', 'Nondisp fx of olecran pro w/o intartic extn right ulna, init', '2.70', 5, 18),
(62, 'Tresodm', 'Unsp fx shaft of right femur, init for opn fx type I/2', '80.01', 1, 11),
(64, 'Holdalamis', 'Posterior scleritis, right eye', '2.51', 6, 76),
(65, 'Fintogne', 'Sprain of unspecified site of unspecified knee, init encntr', '20.02', 6, 15),
(66, 'Duaobam', 'Other injury of ureter, initial encounter', '84.01', 1, 92),
(67, 'Tisn', 'Shoulder lesions', '30.42', 5, 63),
(68, 'Zamfit', 'Poisn by oth agents prim acting on the resp sys, asslt, sqla', '96.04', 6, 88),
(69, 'Vivga', 'Lacrimal cyst, right lacrimal gland', '36.44', 6, 38),
(70, 'Strinhgtough', 'Postproc seroma of right eye and adnexa fol an opth proc', '5.26', 3, 88),
(71, 'Overhjold', 'Cysticercosis', '22.77', 7, 20),
(73, 'Tempg', 'Sltr-haris Type II physeal fx phalanx of unsp toe, init', '64.41', 1, 40),
(74, 'Temphsoft', 'War operations involving unsp fire/conflagr/hot subst, milt', '14.01', 2, 71),
(75, 'Fixaflex', 'Insect bite (nonvenomous) of right upper arm, sequela', '13.86', 8, 33),
(76, 'Tresgom', 'Assault by human bite, sequela', '50.35', 7, 21),
(77, 'Fixfleax', 'Unsp fracture of T11-T12 vertebra, init for opn fx', '86.52', 6, 48),
(78, 'Bigtsax', 'Cicatricial entropion of unspecified eye, unspecified eyelid', '84.34', 2, 64),
(79, 'Gembaucket', 'Foliclar lymph grade IIIa, nodes of ing rgn and lower limb', '23.02', 8, 100),
(80, 'Voltsdillam', 'Other and unspecified metabolic disorders', '20.48', 3, 36),
(81, 'Overhoald', 'Lateral epicondylitis, right elbow', '96.73', 4, 10),
(82, 'Duobdam', 'Meningitis in Chagas\' disease', '5.14', 2, 65),
(83, 'Tres2-Zap', 'Prsn brd/alit a motorcycle injured in collision w hv veh', '25.84', 1, 3),
(84, 'Hatisty', 'Fracture of angle of mandible, unspecified side, sequela', '41.39', 6, 92),
(85, 'Voyatdouch', 'Frostbite with tissue necrosis of oth part of head, sequela', '24.26', 5, 86),
(86, 'Lotsatring', 'Generalized abdominal tenderness', '35.75', 2, 68),
(87, 'Latldux', 'Toxic effect of soaps, undetermined, sequela', '65.17', 5, 89),
(88, 'Iat', 'Stable burst fracture of first lumbar vertebra, sequela', '10.03', 2, 51),
(89, 'Tedmp', 'Inhalant use, unsp with inhalant-induced mood disorder', '53.28', 5, 45),
(90, 'Asaoka', 'Laceration with foreign body of nose', '7.71', 3, 49),
(91, 'Flsexidy', 'Intraop hemor/hemtom of the spleen complicating a procedure', '13.14', 3, 54),
(92, 'Bamsity', 'Neoplasm of unspecified behavior of unspecified site', '92.38', 4, 52),
(93, 'Voyagtouch', 'Struck by falling object on passenger ship, sequela', '85.90', 9, 100),
(94, 'Voyathouch', 'Acute panmyelosis with myelofibrosis', '38.23', 1, 30),
(95, 'Tian', 'Unsp fracture of right talus, subs for fx w routn heal', '14.25', 8, 76),
(96, 'Subs-Ex', 'Unsp fracture of right forearm, init for opn fx type I/2', '48.24', 6, 12),
(97, 'Soldarbreeze', 'Anesthesiology devices associated with adverse incidents', '30.71', 3, 27),
(98, 'Soansing', 'Contusion of unspecified urinary and pelvic organ, sequela', '87.17', 3, 51),
(99, 'Tressom', 'Nondisp avulsion fx right ilium, subs for fx w nonunion', '46.62', 6, 18),
(100, 'Tougdhjoyfax', 'Disp fx of r radial styloid pro, 7thR', '47.64', 5, 82),
(105, 'sdadsa', 'sdadsdasdsd', '1.00', 1, 1),
(106, 'sdadsadsadsa', 'asddsadsdasd', '11.00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `verification_code` varchar(64) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`username`, `pass`, `name`, `email`, `role`, `verification_code`, `enabled`, `image`) VALUES
('AntonioCal', '$2a$10$lD92qcgDtM38YvrYwnx8UeE2RTtGNxE.3ZmGP78Hr9dLqJ65WI21q', 'Antonioo', 'antonioocalzado022@gmail.com', 'USER', 'WGoLlcPrYESbX2rg7GBEM1L5oKViIF5ftmQeTzxAXdjvHgVuodoCDefvJUHO4Nro', b'1', '0'),
('antonioFumeta', '$2a$10$PE/noaNZ2YvsWB2ZIWi6IOLvogvXlE63loyJznV2A1hJv9UnKhZsK', 'antonioFumeta ', 'antonioFumeta@gmail.com', 'USER', 'vHvA7i3DAZD84dctKbfNQuGsSUe3EZV02LeGeMi7fajkkqKZrNEGeVemZCPPX2g3', b'1', '0'),
('inma', '$2a$10$8sxZ4H5unQDi4xLx.xi7LOiun/IDoq7BGekzMBvy3lcvuKT1xZzWa', 'inma', 'antoniocalzado02@gmail.com', 'USER', 'O71bXqRF1yFxZ7baJoB879uTwcxEUNmfV5NXUvpzSmT7FS2ppxj5DR1ikfdtGUT8', b'1', 'http://res.cloudinary.com/dbxmpz6qa/image/upload/v1678321169/qys340ixvnnv8peucwmt.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_fk_1` (`username`);

--
-- Indices de la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id_order`,`material_code`),
  ADD KEY `fk_material` (`material_code`),
  ADD KEY `fk_Order` (`id_order`);

--
-- Indices de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_cat` (`category`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tabaco`
--
ALTER TABLE `tabaco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `order_fk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`material_code`) REFERENCES `tabaco` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `pedido` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabaco`
--
ALTER TABLE `tabaco`
  ADD CONSTRAINT `fk_cat` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

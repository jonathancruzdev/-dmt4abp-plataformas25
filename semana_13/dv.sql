-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2025 a las 19:15:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id_archivo` int(11) NOT NULL,
  `url` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id_archivo`, `url`) VALUES
(1, 'foto.jpg'),
(2, 'video.mp4'),
(3, 'doc.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `imagen` varchar(256) NOT NULL,
  `descripcion` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre`, `imagen`, `descripcion`) VALUES
(1, 'Diseño Multimedia', 'images/grafico.jpg', 'La carrera de Diseño Multimedial es una de las más buscadas en el mercado laboral actual y ofrece un gigantesco horizonte de trabajo en el futuro. El conocimiento y la versatilidad de un diseñador multimedial son requeridos en todo tipo de empresas y medios digitales, y resultan esenciales para quien quiera desarrollarse como emprendedor independiente en el siglo 21.\r\n\r\nEstudiar Diseño Multimedial en Escuela Da Vinci te prepara para una carrera profesional llena de posibilidades, con un programa tecnológico e interdisciplinario que combina conocimientos provenientes de múltiples áreas técnicas y creativas. En un ambiente estimulante, y de la mano de profesores que son destacados profesionales en actividad, aprendé comunicación transmedia, programación, desarrollo de apps y páginas web, e-commerce, marketing digital, publicidad, posproducción de cine y sonido, motion graphics, animación 3D, captura de movimiento, mapping, diseño gráfico digital, inteligencia artificial, diseño de videojuegos para advergaming, '),
(2, 'Diseño Gráfico', 'images/grafico.jpg', 'El mundo que nos rodea está hecho de diseño: lo encontramos en el packaging de los productos que consumimos, en los logotipos de las empresas, en el diseño editorial de libros, revistas y publicaciones online, en la tipografía que encontramos al leer cualquier menú, entrar a un negocio o sorprendernos con el diseño publicitario de un cartel en la calle. Los diseñadores gráficos también trabajan con motion graphics para presentaciones, películas y series, páginas web y aplicaciones, campañas de marketing, banners para Google Ads e ilustraciones digitales.\r\n\r\nLa necesidad de soluciones artísticas, funcionales y estéticas, centradas en el usuario, han convertido al egresado de la Carrera de Diseño Gráfico en uno de los profesionales con más demanda en el mercado laboral actual. Además, el crecimiento de redes sociales y medios de comunicación, así como la necesidad de combinar la habilidad de programadores y desarrolladores con las del diseñador, hacen que el diseño gráfico digital sea una carrera con una gran proyección de futuro.\r\n\r\nEstudiar en Escuela Da Vinci te brinda una formación completa en comunicación visual y en las diversas áreas artísticas y profesionales del diseño, incorporando lo último en herramientas digitales,  incluyendo el aprovechamiento de la IA (Inteligencia Artificial). Aprendé a desarrollar tu propia estética y a expresarte a través de un lenguaje visual personal, combinando tipografía, fotografía, color, ilustración, imagen, video, 3D, Marketing Digital y técnicas que vinculan arte y tecnología.\r\n\r\nEstudiá en un ambiente estimulante, junto a profesores que son destacados profesionales con experiencia en su actividad. Nuestro enorme equipamiento tecnológico te permite desarrollarte dentro de un marco de experimentación e intercambio, a la vez que te da acceso a nuestro exclusivo sistema de bolsa de trabajo y pasantías, a través del cual vinculamos a más de 1500 alumnos por año con empresas líderes en el mercado.\r\n\r\n'),
(3, 'Diseño y Programación Web', 'images/web.jpg', 'Estudiar Diseño y Desarrollo Web en Escuela Da Vinci te permite conocer diversas tecnologías para trabajar, emprender y desarrollarte en el mundo digital moderno, entendiendo \"Internet\" como un canal que se expande constantemente y crea nuevos desafíos profesionales a cada momento.\r\n\r\nAprendé técnicas para la creación de Páginas Web RESS (Responsive + Server Side Components), y Aplicaciones Móviles (Progressive Web Apps), que te permitirán convertirte en un Desarrollador Web y Mobile experto, capaz de desarrollar front y backend (Full Stack Developer) de páginas atractivas, modernas y funcionales.\r\n\r\nTodo esto se potencia con conocimientos avanzados en IOT (Internet of Things o programación de objetos en el mundo físico), manejo de APIs, Marketing Digital, Servidores, Diseño UX, Análisis de Datos, Creación de Contenido y Producción de Videos Web. También incorporamos el trabajo con IA (Inteligencia Artificial) aplicada a la resolución de bloques de código para implementaciones a gran escala.  \r\n\r\nLa gran ventaja de este Plan de Estudios actualizado es la relación entre las materias, que simulan el proceso de trabajo entre las diferentes áreas que componen un desarrollo: en cada cuatrimestre,  las asignaturas que cursa un alumno brindan una sinergia que le permite realizar producciones integrales del más alto nivel. La carrera cuenta, además, con docentes que son profesionales de su rubro, por lo que están actualizados en los últimos paradigmas, metodologías e implementaciones requeridos en el mercado laboral.'),
(4, 'Análisis de Sistemas', 'images/sistemas.jpg', 'La tecnología informática cambió la forma en la que trabajamos, vivimos y nos relacionamos. Para toda organización actual el software es un motor fundamental, una herramienta que ha generado nuevos modelos empresariales y cambios profundos tanto en los procesos de producción como en la forma en la que interactuamos con clientes y proveedores.\r\n\r\nLa carrera de Analista de Sistemas en Escuela Da Vinci se enfoca en la formación de profesionales con un fuerte conocimiento en tecnologías de programación y bases de datos modernas, orientados a las necesidades del mercado y de las empresas. Durante la carrera vas a trabajar en distintos tipos de software, incluyendo sistemas web, aplicaciones móviles y programas de escritorio. También vas a aprender todo acerca de calidad y seguridad informática, y estrategias de análisis y diseño de proyectos, además de introducirte, a través de talleres especiales, en disciplinas emergentes como la implementación de IA (Inteligencia Artificial) y Machine Learning. Estas actualizaciones permanentes le brindan al alumno de Da Vinci un perfil único, apto para cargos gerenciales y de toma de decisiones.'),
(5, 'Cine y Nuevos Formatos', 'images/cine.jpg', 'Año tras año la industria audiovisual crece y se expande de manera sostenida. Hace tiempo que la imagen en movimiento ha dejado de ser exclusiva del cine y la televisión para convertirse en una herramienta fundamental no solo en los ámbitos del arte y la cultura, sino también en el entretenimiento, las comunicaciones y las redes sociales. A medida que el medio evoluciona, las propuestas laborales de en el área de la producción audiovisual aumentan en calidad, cantidad y variedad.\r\n\r\nLa Carrera de Cine y Nuevos Formatos Audiovisuales es la única en Argentina que abarca el amplio abanico de posibilidades que el mundo audiovisual tiene para ofrecer en la actualidad. A lo largo de la cursada, los alumnos podrán desarrollar su potencial creativo al desempeñarse en distintos roles y todo tipo de proyectos: cortometrajes de ficción y documentales, series, contenido audiovisual para redes, narraciones interactivas, transmedia, videos 360, cine publicitario, videoclips, instalaciones y más.\r\n\r\nLos egresados de la carrera serán capaces tanto de escribir y dirigir obras propias como de integrar equipos de producción. Tendrán las habilidades necesarias para desenvolverse con soltura en cualquier tipo de rodaje profesional. Además, contarán con conocimientos de software y herramientas tecnológicas que les permitirán alcanzar los objetivos que se propongan en la etapa de posproducción.\r\n\r\nEn Escuela Da Vinci contamos con un cuerpo docente integrado por destacados profesionales en actividad, y también con una gran infraestructura que garantiza un aprendizaje alineado a los estándares de la industria: set de filmación, salas de grabación de sonido, salas de render, isla de corrección de color. Además, disponemos de equipamiento profesional y soporte tecnológico de excelencia, con cámaras 4K, paneles y fresneles LED, lentes de realidad virtual, cámaras y micrófonos 360, computadoras de última generación y mucho más. Todo esto permite que los contenidos de la carrera estén siempre actualizados de acuerdo a las últimas tendencias d');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id_inscripcion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id_inscripcion`, `id_usuario`, `fecha`, `id_carrera`, `id_materia`) VALUES
(1, 1, '2025-09-08', 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(128) NOT NULL,
  `descripcion` varchar(256) NOT NULL,
  `id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre`, `descripcion`, `id_carrera`) VALUES
(1, 'Ilustración Digital', 'Ilustración Digital y otros detalles', 1),
(2, 'Plataformas de Desarrollo', 'PHP y MySQL', 1),
(3, 'Plataformas de Desarrollo', 'NOdeJS, Express y MongoDB', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `descripcion` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `descripcion`) VALUES
(1, 'alumno'),
(2, 'profesor'),
(3, 'administrativo'),
(4, 'director');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `clave`, `email`, `id_rol`) VALUES
(1, 'Juan', '123', 'juan@gmail.com', 1),
(2, 'Sofia', '1234', 'sofia@gamil.com', 1),
(3, 'Esteban', '12345', 'esteban@gamil.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_carrera` (`id_carrera`,`id_materia`),
  ADD KEY `id_materia` (`id_materia`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripciones_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

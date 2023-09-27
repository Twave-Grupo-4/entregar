DROP DATABASE IF EXISTS t_wave;
CREATE DATABASE t_wave;
USE t_wave;

CREATE TABLE cargos(
cod_cargo varchar(3) PRIMARY KEY
);

CREATE TABLE usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    mail varchar(50),
    contrasenia varchar(400), 
    nombre varchar(50),
    telefono varchar(30),
    cod_cargo varchar(3),
    empleado BIT DEFAULT 0,
    notificaciones BIT DEFAULT 0,
    
    PRIMARY KEY(`id_usuario`),
	FOREIGN KEY (cod_cargo) REFERENCES cargos(cod_cargo)
);

CREATE TABLE tarjeta_pago(
    id_tarjeta INT NOT NULL,
    nombre_duenio varchar(50),
    numero varchar(30),
    fecha_vencimiento DATE,
    empresa_de_servicio varchar(10),
    id_usuario INT NOT NULL,
    
    PRIMARY KEY (`id_tarjeta`),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE direccion(
    id_direccion INT NOT NULL AUTO_INCREMENT,
    calle varchar(50),
    numero_direccion varchar(30),
    provincia varchar(20),
    localidad varchar(20),
    
    id_usuario INT NOT NULL,
    
    PRIMARY KEY (`id_direccion`),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE gama(
    gama VARCHAR(50),
    descripcion TEXT,
    
    PRIMARY KEY (`gama`)
);

CREATE TABLE producto(
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    stock INT NOT NULL,
    precio_venta INT,
    url_imagen VARCHAR(255),
    favorito BIT,
    carrito BIT,
    
    id_usuario INT NOT NULL,
    gama VARCHAR(50),
    
    PRIMARY KEY (`id_producto`),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (gama) REFERENCES gama(gama)
);

CREATE TABLE detalle_pedido(
    id_producto INT NOT NULL,
    id_usuario INT NOT NULL,
    cantidad_productos INT,
    
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    
    PRIMARY KEY(id_usuario,id_producto)
);

CREATE OR REPLACE VIEW carrito AS
    SELECT * FROM producto p
    WHERE p.carrito=1;

CREATE OR REPLACE VIEW favorito AS
	SELECT * FROM producto p
    WHERE p.favorito=1;


INSERT INTO cargos (cod_cargo) VALUES("USU");
INSERT INTO cargos (cod_cargo) VALUES("ABM");
INSERT INTO cargos (cod_cargo) VALUES("ADG");

INSERT INTO usuario VALUES(1, "mikeltaberna05@gmail.com", "tuvieja", "Mikel", "11 6351-6146","USU", 0, 0);

INSERT INTO `producto`(`nombre`, `descripcion`, `stock`, `precio_venta`, `url_imagen`, `favorito`, `carrito`, `id_usuario`)
VALUES ('compu','compu', 20, 219205,'https://images.freeimages.com/uploads/11086355/29f0a22a-2f70-4002-be79-a98b5a5fbc56.png', 0, 0, 1);


DROP DATABASE IF EXISTS t_wave;
CREATE DATABASE t_wave;
USE t_wave;

CREATE TABLE cargos(
cod_cargo varchar(3) PRIMARY KEY
);

CREATE TABLE usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    mail varchar(50),
    contrasenia varchar(400), 
    nombre varchar(50),
    telefono varchar(30),
    cod_cargo varchar(3),
    empleado BIT DEFAULT 0,
    notificaciones BIT DEFAULT 0,
    
    PRIMARY KEY(`id_usuario`),
	FOREIGN KEY (cod_cargo) REFERENCES cargos(cod_cargo)
);

CREATE TABLE tarjeta_pago(
    id_tarjeta INT NOT NULL,
    nombre_duenio varchar(50),
    numero varchar(30),
    fecha_vencimiento DATE,
    empresa_de_servicio varchar(10),
    id_usuario INT NOT NULL,
    
    PRIMARY KEY (`id_tarjeta`),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE direccion(
    id_direccion INT NOT NULL AUTO_INCREMENT,
    calle varchar(50),
    numero_direccion varchar(30),
    provincia varchar(20),
    localidad varchar(20),
    
    id_usuario INT NOT NULL,
    
    PRIMARY KEY (`id_direccion`),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE gama(
    gama VARCHAR(50),
    descripcion TEXT,
    
    PRIMARY KEY (`gama`)
);

CREATE TABLE producto(
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    stock INT NOT NULL,
    precio_venta INT,
    url_imagen VARCHAR(255),
    favorito BIT,
    carrito BIT,
    
    id_usuario INT NOT NULL,
    gama VARCHAR(50),
    
    PRIMARY KEY (`id_producto`),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (gama) REFERENCES gama(gama)
);

CREATE TABLE detalle_pedido(
    id_producto INT NOT NULL,
    id_usuario INT NOT NULL,
    cantidad_productos INT,
    
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    
    PRIMARY KEY(id_usuario,id_producto)
);

CREATE OR REPLACE VIEW carrito AS
    SELECT * FROM producto p
    WHERE p.carrito=1;

CREATE OR REPLACE VIEW favorito AS
	SELECT * FROM producto p
    WHERE p.favorito=1;


INSERT INTO cargos (cod_cargo) VALUES("USU");
INSERT INTO cargos (cod_cargo) VALUES("ABM");
INSERT INTO cargos (cod_cargo) VALUES("ADG");

INSERT INTO usuario VALUES(1, "mikeltaberna05@gmail.com", "tuvieja", "Mikel", "11 6351-6146","USU", 0, 0);

INSERT INTO `producto`(`nombre`, `descripcion`, `stock`, `precio_venta`, `url_imagen`, `favorito`, `carrito`, `id_usuario`)
VALUES ('compu','compu', 20, 219205,'https://images.freeimages.com/uploads/11086355/29f0a22a-2f70-4002-be79-a98b5a5fbc56.png', 0, 0, 1);


/* Aca entran los insert into de la gama */
INSERT INTO gama(gama,descripcion)
VALUES  ("ventiladores","tecnología"),
        ("auriculares","tecnología"),
        ("impresoras","tecnología"),
        ("televisores","tecnología"),
        ("licuadoras","tecnología"),
        ("computadoras","tecnología"),
        ("aires","tecnología");
/* Aca van los insert de producto */


INSERT INTO producto(nombre,descripcion,stock,precio_venta,url_imagen,favorito,carrito,id_usuario,gama)
VALUES("Aire Acondicionado BGH 2700 F/C BS-26WCCR Split","Capacidad de refrigeración: 2700W.
Frigorías: 2322.
Capacidad de calefacción: 2650W.
Eficiencia energética: A.
Con función deshumidificación.
Tiene temporizador.
Cuenta con función de dormir.
Incluye control remoto.
Dimensiones de la unidad externa: 72cm de ancho x 49.5cm de alto x 27cm de profundidad.
Dimensiones de la unidad interna: 72cm de ancho x 29cm de alto x 18.7cm de profundidad.
",11, 501.142,"https://images.freeimages.com/uploads/11086355/b296ba79-ae95-415b-8436-aa9365708b5f.png
",0,0,1,"aires"),

("Compresor DUAL Inverter™ con 10 años de Garantía
Conectividad Wi-Fi (ThinQ™ App), funciona con el Asistente de Google.
Sistema activo purificador Plasmaster Ionizer Plus
Ahorro de Energía y Enframiento Rápido
Enfriamiento y Calefacción.","Compresor DUAL Inverter™ con 10 años de Garantía
Conectividad Wi-Fi (ThinQ™ App), funciona con el Asistente de Google.
Sistema activo purificador Plasmaster Ionizer Plus
Ahorro de Energía y Enframiento Rápido
Enfriamiento y Calefacción.",24,19.999,"https://images.freeimages.com/uploads/11086355/a2a541b7-3fbc-4066-a94f-8ad35aeef686.jpg",0,0,1,"aires"),

("AIRE ACONDICIONADO SPLIT TRANE INVERTER 4MXW1124AB000AA 6650W 5800F FRÍO/CALOR","4MXW: Unidad interior bomba de calor inverter
Control remoto inalámbrico
Display led oculto
Bajo nivel de ruido
Cinco modos de operación: Enfriamiento, Calefacción, Deshumidificación, Ventilación: Automático
Operación programable: Permite determinar el funcionamiento del equipo por un período de tiempo programable para encendido y apagado
Modo Nocturno (Sleep).: Ajusta la temperatura automáticamente al dormir, generando mayor confort y ahorro de energía
Modo ECO: Modifica en 2°C el ajuste de temperatura para ahorrar energía
Función Turbo: El sistema opera con el set point extremo a velocidad máxima para enfriar o calentar la habitación con rapidez
Función auto-recovery: La unidad arranca en forma automática luego de un corte de energía eléctrica
Operación de emergencia: Es posible utilizar la unidad sin la intervención del control remoto, tanto en modo enfriamiento como calefacción.",124,132341.12,"https://images.freeimages.com/uploads/11086355/fe0c6d5e-898e-4ca1-9ae7-5ccc4320e088.jpg",0,0,1,"aires"),

("Aire Acondicionado Split Kelvinator Frio (5300w)","Split. Timer, Frio, Gas refrigerante R- 410A. 5300 watts.
Filtro que posee una enzima biológica especializada que atrapa partículas de polvo. bacterias. hongos y microbios que se encuentran en el aire. La nueva línea ecológica permite una mayor capacidad de refrigeración cuidando el medio ambiente ya que no afecta la capa de ozono. Los Acondicionadores de Aire Kelvinator poseen eficiencia energética B. lo que favorece un menor consumo energético.
Marca: Kelvinator",666,5631246.12,"https://images.freeimages.com/uploads/11086355/09bab48f-9ead-4466-8a4a-f673ec8463d3.png",0,0,1,"aires"),

("Televisor Samsung 55 QLED 4K Smart TV Q80A","Direct Full Array,
Procesador Quantum 4K,
Volumen de color al 100% con Quantum Dot,
Modo Juego",1244522,23,"https://images.freeimages.com/uploads/11086355/bc1383aa-3b07-4d7c-96a9-4a2690b8d28a.png",0,0,1,"televisores"),

("Televisor Smart LG 50NANO80 50 Led Uhd 4K Nano Cell Control Magico","La tecnología LG NanoCell utiliza nanopartículas para filtrar los colores impuros de las longitudes de onda RGB.
4K Procesador Inteligente α5 generación 5 analiza el contenido original y lo optimiza para mejorar la calidad.
LG NanoCell TV cuenta con una conveniente interfaz activada por voz que está totalmente personalizada para ti.
Disfrute de sus películas favoritas en un impresionante color puro en la pantalla de LG NanoCell TV.
Transforme su experiencia con juegos rápidos y fluidos y siéntase como si estuviera realmente inmerso en el juego.
Con acceso directo a los principales servicios de transmisión, seguramente encontrará algo para todos.
El empaque de LG NanoCell ha sido rediseñado usando impresión de un solo color y una caja reciclable.",67,331985.245,"https://images.freeimages.com/uploads/11086355/6603fba6-4e27-4caf-a30d-9c3f20c10496.jpg",0,0,1,"televisores"),

("Televisor Led AIWA AW32B4 32","Pantalla 32″ Led Tv | AW32B4 | Resolución 720p | Sonido Dolby Digital | Hdmi | USB",124,99513.00,"https://images.freeimages.com/uploads/11086355/ab16d710-4e27-4213-afca-8bc7216b0a7a.jpg",0,0,1,"televisores"),

("Televisión LED Smart TV GHIA G32DHDS8-Q de 32, Resolución 1366 x 768 , 3 hdmi , 2 USB G32DHDS8-Q","Televisión LED Smart TV GHIA G32DHDS8 de 32, Resolución 1366 x 768.",12,234523.12,"https://images.freeimages.com/uploads/11086355/4491a251-1707-44f9-9f5f-50b7b2134f86.jpg",0,0,1,"televisores"),

("Ventilador De Mesa Liliana Vsoc16 16 Aspas Transparentes 3 Vel 75w","VENTILADOR DE MESA LILIANA VSOC16 16 ASPAS TRANSPARENTES 3 VEL 75W
/Alto: 65.5.
/Ancho: 48.5.
/Color: NEGRO.
/Cantidad de Paletas: 3.
/Control remoto: NO.
/Grilla: SI.
",25,53222.19,"https://images.freeimages.com/uploads/11086355/4341363e-cacd-4ee8-8d94-89d5aa11a590.jpg",0,0,1,"ventiladores"),

("Ventilador Industrial 26p 65cm Pared Giratorio Protalia Gtia","MarcaProtalia
Modelov 650w
Tipo de ventiladorDe Pared",78,94150.00,"https://images.freeimages.com/uploads/11086355/57877b97-200b-4667-84d4-f1a6762d4d91.jpg",0,0,1,"ventiladores"), 

("VENTILADOR MULTIFUNCION 10″ (25 CM) ROSA STAR TRAK STP31-10CR","Potencia: 65 W.
Marca: Star Trak.
Niveles de Potencia: 3.
Oscilante.
Palas: 3 Aspa Triple de Acero.
Posiciones: Pie – Pared – Piso
Cabezal Reclinable.
Color: Rosa.
Garantia 1 Año.",35,2983404.43,"https://images.freeimages.com/uploads/11086355/607420e6-f423-4c43-8e62-79342e7b9726.jpg",0,0,1,"ventiladores"), 

("VENTILADOR 10″ 3 EN 1 MY-1088 /AZUL CASTELL","VENTILADOR GIRATORIO 360°, SÚPER FÁCIL DE ENSAMBLAR, CON TRES FUNCIONALIDADES (MESA, PARED Y PEDESTAL), PERILLA MANUAL DE 3 VELOCIDADES, CON ALTURA AJUSTABLE DE HASTA 95 CM A LA MEDIDA QUE USTED AMERITE, REJILLAS Y ASPAS METÁLICAS.",212,1245.23,"https://images.freeimages.com/uploads/11086355/866e11b2-f673-49c2-ab1b-b37c2f0b651a.jpg",0,0,1,"ventiladores"),

("Notebook Lenovo Thinkpad L15 Core I3 1115g4 8gb Ssd 256gb","GARANTÍA:
•LOS PRODUCTOS CON GARANTÍA DESDE LA FECHA DE COMPRA ES CUBIERTA ÚNICAMENTE POR DESPERFECTOS DE FABRICA.
NO SE ACEPTAN COMPONENTES QUEMADOS, NI PRODUCTOS GOLPEADOS O
CON SIGNOS DE MALTRATO Y MAL USO.
SE DEBERÁ ENTREGAR EN LAS MISMAS CONDICIONES QUE FUE ENTREGADO,
EN PERFECTO ESTADO Y CON SU EMBALAJE ORIGINAL Y COMPLETO.
LA MERCADERÍA EN GARANTÍA SERÁ TOMADA A CONDICIÓN HASTA SER REVISADA
POR NUESTRO SERVICIO TÉCNICO PUDIENDO TOMARSE EL MISMO HASTA 7 DÍAS HÁBILES.
EL TRANSPORTE HASTA NUESTRO SERVICIO TÉCNICO CORRE POR CUENTA Y
ORDEN DEL USUARIO, ASÍ COMO EL RETIRO DEL MISMO.",216,733188.00,"https://images.freeimages.com/uploads/11086355/8bb13892-5784-4494-857b-39d3908f4a44.jpg",0,0,1,"computadoras"),

("Notebook Acer Aspire 5 Core i5 8Gb Ssd 256Gb 15.6 Win10","Marca : AcerModelo : Aspire 5UPC / EAN : 4710886607373P/N : A515-54-55HZProcesador : Intel Core i5-1035G1 (caché de 6 M, hasta 3,60 GHz)Memoria : 8 GBGráficos : Intel UHD GraphicsAlmacenamiento : SSD 256 GBPantalla : 15,6 FHD (1920 x 1080), IPS, ComfyViewDistribucion teclado : EspañolTeclado Num. : SiSist. Operativo : Windows 10 64 bitLector Optico : No",54,215634.45,"https://images.freeimages.com/uploads/11086355/25600501-636e-4840-a75e-e5d0880218ab.jpg",0,0,1,"computadoras"),

("Auriculares Gamer HP600GM Noblex","Sonido X Sound con efecto Surround. Escuchá como un verdadero Gamer.
• Disfrutalo en tu PC, Laptop y en tus consolas favoritas.
• Incluye adaptador para utilizarlo en dispositivos con entrada de audio y micrófono separadas
• Luces LED (vía USB)
• Micrófono omnidireccional ajustable.
• Conector Mini Plug 3.5mm
• Cable de 2 metros.
• Control de volumen y habilitación de micrófono desde el cable del auricular.
• Almohadillas y vincha extra soft para uso confortable.
• Construcción ultra resistente.
• Diseño Gamer de Última Generación.
• Dimensiones: 200x200x90mm",34,34633.32,"https://images.freeimages.com/uploads/11086355/9e3daea3-c5aa-4611-9063-d9159025bfe6.jpg",0,0,1,"auriculares"),

("Auriculares Inalámbricos Motorola Moto Xt220 Rojo","CARACTERÍSTICAS: -Auriculares Bluetooth con micrófono: los auriculares Motorola están diseñados para mayor comodidad con un micrófono integrado para llamadas manos libres sin la molestia de los cables. -Control de 3 botones, fácil con la música y las llamadas para que puedas operar todas las funciones de audio y llamadas directamente en los auriculares sin tocar tu teléfono celular para disfrutar el sonido. -23 horas de reproducción de música. -Potente batería integrada que ofrece hasta 24 horas de tiempo de reproducción y es recargable con el cable USB -Nuestros auriculares con micrófono y controladores de alta definición de 40 mm para un sonido potente. - Ligero y plegable listo para viajar. - Comando de voz: Alexa, Siri, Asistente de Google. - Comodidad acolchada, nuestros auriculares de diseño ergonómico están diseñados con almohadillas ultra suaves y una diadema ajustable para ayudarte a lograr el ajuste perfecto.
",57,13544.34,"https://images.freeimages.com/uploads/11086355/1415933a-6f78-4b3a-be35-b04dc3241f00.jpg",0,0,1,"auriculares"),
    
("IMPRESORA EPSON SIST CONTINUO L1300 A3 (T664)","General:
Sistemas de Operación:
Windows® 8, Windows 7, Windows Vista®, Windows XP, Windows XP Professional x64 Mac
OS® X, 10.5.8, 10.6.x, 10.7.x, 10.8.x
Dimensiones:
Ancho: 70,5 cm, Profundidad: 32,2 cm, Alto: 21,5 cm
Peso:
12,2 kg (sin tinta)
",34,2352352.34,"https://images.freeimages.com/uploads/11086355/f6077c26-7071-4cbe-9e30-6fe409b2eb03.jpg",0,0,1,"impresoras"),

("Distribución al por mayor de Impresoras Multifuncionales a Color Epson EcoTank L8180 C11CJ21301 en Buenos Aires Argentina","C11CJ21301 IMPRESORA MULTIFUNCIONAL TABLOIDE FOTOGRAFICA EPSON ECOTANK L8180",345,232352.23,"https://images.freeimages.com/uploads/11086355/a4341dc5-dcbf-457b-9d1f-c02e8fc4f271.jpg",0,0,1,"impresoras"),

("Licuadora Oster M4655B 1.2Lts 600Watts","Licuadora OSTER.M4655.Cromada.Licuadora redonda clásica de 3 velocidades con base metálica cromada. Potente motor de 400 Watts nominales 600 Watts a la máxima potencia. Interruptor rotatorio de 3 velocidades. Sistema de impulsión totalmente metálico. Revolucionaria cuchilla pica-hielo. Resistente jarra de vidrio de 1,2 lts. Accesorio mini vaso incluido. Compartimiento guarda cable.",354,43442.33,"https://images.freeimages.com/uploads/11086355/c374beb8-04f1-4812-902d-4b36fc959a81.jpg",0,0,1,"licuadoras"),

("Licuadora Philips HR2129/00 2Lts 550Watts","Descripción
Ficha técnica
Licuadora Philips HR2129 cuenta con 550 watts de potencia , 2 velocidades mas pulsador, jarra de 2 litros de plástico PP y cuchillas rigidas",234,31435.21,"https://images.freeimages.com/uploads/11086355/e2c1a1eb-96cd-4221-96a3-a5701c62be49.png",0,0,1,"licuadoras");  
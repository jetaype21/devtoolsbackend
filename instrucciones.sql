-- Para crear categorias
CREATE TABLE categorias(
	categoria_id SERIAL PRIMARY KEY UNIQUE,
	categoria_nombre VARCHAR(50) NOT NULL,
	categoria_descripcion TEXT NOT NULL
);

SELECT * FROM categorias;

-- Para crear  herramientas
CREATE TABLE herramientas( 
	herramienta_id SERIAL PRIMARY KEY UNIQUE, 
	herramienta_logo TEXT NOT NULL, 
	herramienta_nombre VARCHAR(50) NOT NULL, 
	herramienta_descripcion TEXT NOT NULL, 
	herramienta_enlace TEXT NOT NULL,
	categoria_id INTEGER REFERENCES categorias(categoria_id)
);  

SELECT * FROM herramientas;

-- Generar categorias
INSERT INTO categorias(
	categoria_nombre,
	categoria_descripcion
) values 
(
	'inspiración de diseño',
	'proceso creativo para encontrar ideas y conceptos para proyectos de diseño'
),
(
	'diseño online',
	'creación de contenido visual a través de herramientas digitales para su uso en internet.'
),
(
	'inteligencia artificial',
	'capacidad de las máquinas para realizar tareas que requerirían inteligencia humana, como el análisis de datos y la toma de decisiones.'
),
(
	'biblioteca de imágenes',
	'colección de imágenes y fotos que se utilizan en proyectos creativos.'
),
(
	'colores',
	'elementos visuales que se utilizan en el diseño para transmitir emociones y sensaciones.'
),
(
	'tipografías',
	'estilo y diseño de las letras y caracteres utilizados en el texto.'
),
(
	'Librerías Figma',
	'repositorios de elementos de diseño predefinidos que se pueden utilizar en proyectos de diseño.'
),
(
	'Correos electrónicos',
	'herramienta de comunicación digital para enviar y recibir mensajes.'
),
(
	'Mayor productividad',
	'lograr realizar más tareas y en menos tiempo, aumentando la eficiencia y el rendimiento.'
);

select * from categorias;


-- Generar herramientas

-- inspiracion de diseño 
INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES 
(
	'https://1000logos.net/wp-content/uploads/2023/01/Behance-logo-500x281.png',
	'Behance',
	'plataforma de Adobe para mostrar y conectar con creativos.',
	'https://www.behance.net',
	1
),
(
	'https://upload.wikimedia.org/wikipedia/commons/3/32/Dribbble_logo.png',
	'Dribbble',
	'comunidad de diseñadores para compartir trabajo e inspiración.',
	'https://dribbble.com',
	1
),
(
	'https://assets.awwwards.com/assets/images/logo-schema.png',
	'Awwwards',
	'premios y galería de sitios web destacados.',
	'https://www.awwwards.com',
	1
),
(
	'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/v1466588323/n9khbilhezk3tg1lg7ft.png',
	'Muzli',
	'Extensión para el navegador que proporciona inspiración diaria en diseño, tecnología y creatividad.',
	'https://muz.li',
	1
),
(
	'https://s.dspncdn.com/a1/webapp/img/content/meta/default_meta_display.jpg',
	'Designspiration',
	'comunidad en línea de creativos que comparten proyectos inspiradores.',
	'https://www.designspiration.com',
	1
),
(
	'https://www.siteinspire.com/assets/sprites-retina/logo_small-4c48c3d3549896616ac5ec49de1616704ad8a1f1f2fb4c4d430520c6aff5832d.png',
	'SiteInspire',
	'galería de sitios web con diseños creativos y excepcionales',
	'https://www.siteinspire.com/',
	1
);


-- Para diseño online
INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES 
( 
	'https://www.bing.com/th/id/OIP.akV9KjAtdaROFei8n8dnowHaHw?w=163&h=180&c=7&r=0&o=5&pid=1.7',
	'Canva',
	'Herramienta de diseño gráfico en línea con plantillas y herramientas de edición.',
	'https://www.canva.com/',
	2
),
( 
	'https://www.bing.com/th/id/OIP.akV9KjAtdaROFei8n8dnowHaHw?w=163&h=180&c=7&r=0&o=5&pid=1.7',
	'Figma',
	'Herramienta de diseño de interfaz de usuario colaborativa en línea.',
	'https://www.figma.com/',
	2
),
( 
	'https://th.bing.com/th?q=Sketch+App+Logo&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=es-XL&cc=PE&setlang=es&adlt=moderate&t=1&mw=247',
	'Sketch',
	'Herramienta de diseño de interfaz de usuario para Mac.',
	'https://www.sketch.com/',
	2
),
( 
	'https://th.bing.com/th/id/OIP.-oqA168DIRuRM0Ri1IPxeQHaJa?w=131&h=180&c=7&r=0&o=5&pid=1.7',
	'Adobe Creative Cloud',
	'Conjunto de herramientas de diseño y creatividad de Adobe.',
	'https://www.adobe.com/creativecloud.html',
	2
),
( 
	'https://yt3.ggpht.com/a/AATXAJzulj1QqcfmGHg8aLszp_a5PbQCdqn1ttvr5A=s900-c-k-c0xffffffff-no-rj-mo',
	'PicMonkey',
	'Editor de fotos en línea con herramientas de diseño gráfico.',
	'https://www.picmonkey.com/',
	2
);

-- Para inteligencia artificial

INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES
(
	'https://th.bing.com/th/id/OIP.Jr_jMdq4KxjnoIfDpoFjhQHaDQ?w=346&h=153&c=7&r=0&o=5&pid=1.7',
	'ChatGPT',
	'Empresa de investigación de inteligencia artificial enfocada en el desarrollo seguro y beneficioso de la IA.',
	'https://openai.com/',
	3
),
(
	'https://th.bing.com/th/id/OIP.ToNltuP3P-7ODZBIRHfQiwHaEu?w=245&h=180&c=7&r=0&o=5&pid=1.7',
	'TensorFlow',
	'Biblioteca de software de código abierto para aprendizaje automático e inteligencia artificial.',
	'https://www.tensorflow.org/',
	3
),
(
	'https://th.bing.com/th/id/OIP.uk2p8PwwP_1JUL_EKFeHdAHaDt?pid=ImgDet&rs=1',
	'DeepMind',
	'Empresa de investigación de inteligencia artificial con enfoque en el aprendizaje automático y la robótica.',
	'https://deepmind.com/',
	3
),
(
	'https://th.bing.com/th/id/OIP.knBic3Jy21TMmmoR1rklhwHaEK?w=312&h=180&c=7&r=0&o=5&pid=1.7',
	'Midjourney',
	'Laboratorio independiente de investigación y el nombre de un programa de inteligencia artificial con el cual sus usuarios pueden crear imágenes a partir de descripciones textuales.',
	'https://www.midjourney.com/',
	3
);


-- Para imagenes
INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES
(
	'https://www.pexels.com/assets/static/images/meta/pexels-icon.png',
	'Pexels',
	'Pexels ofrece una amplia variedad de imágenes gratuitas de alta calidad para uso personal y    comercial.',
	'https://www.pexels.com/',
	4
),
(
	'https://unsplash.com/favicon.ico',
	'Unsplash',
	'Unsplash es una plataforma de fotografías gratuitas de alta resolución que se pueden usar para cualquier proyecto.',
	'https://unsplash.com/',
	4
),
(
	'https://pixabay.com/favicon.ico',
	'Pixabay',
	'Pixabay ofrece imágenes, vectores, ilustraciones y videos gratuitos de alta calidad.',
	'https://pixabay.com/',
	4
),
(
	'https://stocksnap.io/img/favicon.png',
	'StockSnap',
	'StockSnap ofrece imágenes gratuitas de alta resolución para uso personal y comercial.',
	'https://stocksnap.io/',
	4
),
(
	'https://gratisography.com/wp-content/themes/gratis-v3/assets/images/gratisography-logo.svg',
	'Gratisography',
	'Gratisography ofrece imágenes únicas y creativas de alta resolución de forma gratuita.',
	'https://www.gratisography.com/',
	4
);

-- Para colores
INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES
(
	'https://th.bing.com/th/id/R.d77447073f0af8feeb6eee438a8dda25?rik=JKzMCJgrGr2loQ&pid=ImgRaw&r=0',
	'Coolors',
	'Coolors es un generador de paletas de colores rápidos y sencillos que permite crear combinaciones de colores perfectas para cualquier proyecto.',
	'https://coolors.co/',
	5
),
(
	'https://th.bing.com/th/id/R.9542ea3e25b96d3e6b593c723de93eaa?rik=6uz0TSb4FFUONQ&pid=ImgRaw&r=0',
	'Color Hunt',
	'Color Hunt es una colección de paletas de colores gratuitas y creativas para diseñadores y artistas.',
	'https://colorhunt.co/',
	5
),
(
	'https://paletton.com/favicon.ico',
	'Paletton',
	'Paletton es un generador de paletas de colores que permite crear combinaciones de colores complementarios, análogos y triádicos.',
	'https://paletton.com/',
	5
),
(
	'https://mycolor.space/img/color-space-logo.png',
	'ColorSpace',
	'ColorSpace es un sitio web gratuito que ofrece una gran variedad de herramientas de generación de colores y paletas para diseñadores y artistas.',
	'https://mycolor.space/',
	5
);

-- Para tipografias
INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES
(
	'https://www.designtagebuch.de/wp-content/uploads/mediathek/2021/03/google-fonts-logo.jpg',
	'Google Fonts',
	'Google Fonts es una biblioteca gratuita y de código abierto de tipografías para la web, que se pueden utilizar en cualquier sitio web.',
	'https://fonts.google.com/',
	6
),
(
	'https://www.fontsquirrel.com/presentation/images/logo.png',
	'Font Squirrel',
	'Font Squirrel es un sitio web que ofrece una gran variedad de fuentes gratuitas y de pago para uso comercial y personal.',
	'https://www.fontsquirrel.com/',
	6
),
(
	'https://www.dafont.com/img/favicon.ico',
	'DaFont',
	'DaFont es un sitio web que ofrece una gran colección de fuentes gratuitas para uso personal y comercial.',
	'https://www.dafont.com/',
	6
),
(
	'https://th.bing.com/th/id/OIP.zoOknRriWJtI_fJPTZXnOwAAAA?pid=ImgDet&rs=1',
	'Typekit',
	'Typekit es un servicio de suscripción de Adobe que ofrece una amplia variedad de fuentes de alta calidad para uso en la web.',
	'https://fonts.adobe.com/typekit',
	6
),
(
	'https://www.fontspace.com/favicon.ico',
	'FontSpace',
	'FontSpace es un sitio web que ofrece una gran cantidad de fuentes gratuitas y de pago para uso personal y comercial.',
	'https://www.fontspace.com/',
	6
);

-- Librerias figma

INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES
(
	'https://static.figma.com/app/icon/1/favicon.png',
	'Figma Community',
	'Figma Community es una plataforma en línea donde los usuarios de Figma pueden compartir y descubrir recursos y diseños.',
	'https://www.figma.com/community/',
	7
),
(
	'https://i0.wp.com/uxcrush.com/wp-content/uploads/2022/03/UXcrushlogo.png',
	'FigmaCrush',
	'FigmaCrush es una biblioteca de recursos gratuitos para Figma, que incluye plantillas, componentes y diseños.',
	'https://www.figmacrush.com/',
	7
),
(
	'https://th.bing.com/th/id/R.8d0f1594acdc186df9fce50bbd7c6fe0?rik=0C3Hd52TYJ%2bI4Q&pid=ImgRaw&r=0',
	'Figma Resources',
	'Figma Resources es una biblioteca de recursos gratuitos para Figma, que incluye plantillas, iconos y diseños de calidad.',
	'https://www.figmaresources.com/',
	7
),
(
	'https://th.bing.com/th/id/R.9ea022664220ccea1f0f638820de2529?rik=L2kzOvGnDNVPzA&pid=ImgRaw&r=0',
	'Figma Freebies',
	'Figma Freebies es una biblioteca de recursos de diseño gratuitos para Figma, que incluye plantillas, iconos y diseños.',
	'https://www.figmafreebies.com/',
	7
);


-- Correos electronicos
INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES
(
	'https://th.bing.com/th/id/R.519ea3ebd15afe3f764563d2e4dc9352?rik=%2begBUKvD7hdK%2bA&pid=ImgRaw&r=0',
	'SendGrid',
	'SendGrid es una plataforma de correo electrónico en la nube que ofrece APIs y herramientas avanzadas para el envío y gestión de correos electrónicos de forma escalable y personalizable.',
	'https://sendgrid.com/',
	8
),
(
	'https://th.bing.com/th/id/OIP.j6DiUpky5BD_IxaXyPU1SgHaCW?pid=ImgDet&rs=1',
	'Mailgun',
	'Mailgun es una plataforma de correo electrónico en la nube que ofrece APIs y herramientas avanzadas para el envío y gestión de correos electrónicos, con características específicas para la programación y automatización de correo electrónico.',
	'https://www.mailgun.com/',
	8
),
(
	'https://th.bing.com/th/id/OIP.tVXilHeCXBtIWyjj3N88AQHaEK?pid=ImgDet&rs=1',
	'SparkPost',
	'SparkPost es una plataforma de correo electrónico en la nube que ofrece APIs y herramientas avanzadas para el envío y gestión de correos electrónicos, con características específicas para desarrolladores y equipos de ingeniería.',
	'https://www.sparkpost.com/',
	8
);

-- Para mayor productividad
INSERT INTO herramientas(
	herramienta_logo,
	herramienta_nombre,
	herramienta_descripcion,
	herramienta_enlace,
	categoria_id
) VALUES
(
	'https://th.bing.com/th/id/OIP.tCBwhlOEpLADJVPq8FacJwHaEK?pid=ImgDet&rs=1',
	'Trello',
	'Trello es una herramienta de gestión de proyectos basada en tableros que permite organizar y visualizar el trabajo de forma eficiente y colaborativa.',
	'https://trello.com/',
	9
),
(
	'https://th.bing.com/th/id/R.416e5884934ef3d01a380f5b43089fd4?rik=BziPfmQqa4QG7A&pid=ImgRaw&r=0',
	'Asana',
	'Asana es una herramienta de gestión de proyectos y tareas que ayuda a equipos de cualquier tamaño a organizar y planificar el trabajo de manera efectiva.',
	'https://asana.com/',
	9
),
(
	'https://th.bing.com/th/id/R.6373bd9d838c450d742caa9543973cbd?rik=RLZkRs9tUpLsBA&pid=ImgRaw&r=0',
	'Notion',
	'Notion es una plataforma de productividad que combina múltiples herramientas en una sola, incluyendo gestión de proyectos, base de conocimiento, notas y más.',
	'https://www.notion.so/product',
	9
),
(
	'https://github.githubassets.com/favicons/favicon-dark.png',
	'GitHub',
	'GitHub es una plataforma de desarrollo colaborativo de software que permite a los equipos trabajar juntos en proyectos, gestionar versiones, hacer seguimiento de problemas y más.',
	'https://github.com/',
	9
);

SELECT * FROM herramientas;


DROP TABLE IF EXISTS articles_to_tags;

DROP TABLE IF EXISTS articles;

DROP TABLE IF EXISTS tags;

DROP TABLE IF EXISTS images;


CREATE TABLE images (
  id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  src LONGTEXT,
  alt varchar(255)
 );

INSERT INTO images(src, alt)
VALUES ('https://i.topi.to/tQfdnYAxEh4tqOq39JqapcXFSKZuysenn4VSB_B184w=/670x446/smart/filters:fill(white):format(webp):quality(70)/https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F6%2F6d%2FMachuPicchu_-_Wayna_Pikchu.jpg%2F630px-MachuPicchu_-_Wayna_Pikchu.jpg',
        'Lorem Ipsum');

INSERT INTO images(src, alt)
VALUES ('https://i.topi.to/T9fZhgswg3HdIwMyXPpQWH31_mVS7vjjsHh-y8Nv5ME=/670x445/smart/filters:fill(white):format(webp):quality(70)/https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fa%2Faf%2FAll_Gizah_Pyramids.jpg%2F630px-All_Gizah_Pyramids.jpg',
        'Lorem Ipsum');

INSERT INTO images(src, alt)
VALUES ('https://i.topi.to/29HzzsWQEvlAbH7XzWYpP0A17T5Mfe3oEm87VDHTG1U=/670x836/smart/filters:fill(white):format(webp):quality(70)/https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F94%2FAl_Khazneh.jpg%2F630px-Al_Khazneh.jpg',
        'Lorem Ipsum');

INSERT INTO images(src, alt)
VALUES ('https://i.topi.to/Flt_i4BXQ3WKhtDF_J1DJ8waAeO49N6KKpoh7g04WTs=/670x446/smart/filters:fill(white):format(webp):quality(70)/https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F1%2F17%2FThe_Great_wall_-_by_Hao_Wei.jpg%2F630px-The_Great_wall_-_by_Hao_Wei.jpg',
        'Lorem Ipsum');

INSERT INTO images(src, alt)
 VALUES ('https://i.topi.to/hIQtph-DrtFzmBlimjo9yF4mmqx0ugSu76JTaB9N9JM=/670x440/smart/filters:fill(white):format(webp):quality(70)/https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F1%2F1d%2FTaj_Mahal_%2528Edited%2529.jpeg%2F630px-Taj_Mahal_%2528Edited%2529.jpeg',
        'Lorem Ipsum');

INSERT INTO images(src, alt)
        VALUES ('https://i.topi.to/ZZ-9xum0WeZd30EgdoeRDQt40j9m7_fSWvO7RqPt6OU=/670x419/smart/filters:fill(white):format(webp):quality(70)/https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fc%2Fc6%2FAttica_06-13_Athens_50_View_from_Philopappos_-_Acropolis_Hill.jpg%2F630px-Attica_06-13_Athens_50_View_from_Philopappos_-_Acropolis_Hill.jpg',
        'Lorem Ipsum');

CREATE TABLE articles (
  id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  subtitle varchar (255),
  text LONGTEXT,
  resume LONGTEXT,
  author varchar (255),
  image_id int,
  CONSTRAINT image_id_fk FOREIGN KEY (image_id) REFERENCES images(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO articles(
id,
title,
subtitle,
resume,
text,
author,
image_id
)

VALUES (
 1,
 'Machu Picchu (Pérou)',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum. 
 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet recusandae corrupti enim at neque sed, corporis eos vel dolores libero! Molestiae minus pariatur sunt sapiente magni asperiores quod, culpa magnam. Ea in deleniti iure quae quos neque. Officia harum quae esse asperiores, reiciendis assumenda optio doloremque non quod voluptatem hic! Corrupti, molestiae placeat neque nisi enim commodi pariatur modi ea. 
 Temporibus, magnam iure dolore inventore vel consectetur, debitis perspiciatis optio nostrum maiores voluptatum ullam ipsum expedita qui ducimus commodi fuga incidunt. Nobis hic eaque odit nemo aliquam, cumque ea dolore. Fuga in corrupti natus, error dolorem autem dicta, omnis, aspernatur hic itaque expedita soluta voluptatum iure id ipsum vero rem quidem vel sapiente aperiam corporis. 
 Magni officia porro incidunt debitis! Qui optio aliquid voluptates dolor doloribus, repellendus amet hic doloremque, perferendis, quo velit! Asperiores quo vitae repudiandae ipsum animi perspiciatis, nesciunt tempora non laborum veniam corrupti quod deleniti. 
 Ea, beatae.',
'Mary Poppins',
1
),

(
2,
'Pyramides de Gizeh (Egypte)',
'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum. 
 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet recusandae corrupti enim at neque sed, corporis eos vel dolores libero! Molestiae minus pariatur sunt sapiente magni asperiores quod, culpa magnam. Ea in deleniti iure quae quos neque. Officia harum quae esse asperiores, reiciendis assumenda optio doloremque non quod voluptatem hic! Corrupti, molestiae placeat neque nisi enim commodi pariatur modi ea. 
 Temporibus, magnam iure dolore inventore vel consectetur, debitis perspiciatis optio nostrum maiores voluptatum ullam ipsum expedita qui ducimus commodi fuga incidunt. Nobis hic eaque odit nemo aliquam, cumque ea dolore. Fuga in corrupti natus, error dolorem autem dicta, omnis, aspernatur hic itaque expedita soluta voluptatum iure id ipsum vero rem quidem vel sapiente aperiam corporis. 
 Magni officia porro incidunt debitis! Qui optio aliquid voluptates dolor doloribus, repellendus amet hic doloremque, perferendis, quo velit! Asperiores quo vitae repudiandae ipsum animi perspiciatis, nesciunt tempora non laborum veniam corrupti quod deleniti. 
 Ea, beatae.',
'Mary Poppins',
2
),

(
3,
'Petra (Jordanie)',
'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum. 
 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet recusandae corrupti enim at neque sed, corporis eos vel dolores libero! Molestiae minus pariatur sunt sapiente magni asperiores quod, culpa magnam. Ea in deleniti iure quae quos neque. Officia harum quae esse asperiores, reiciendis assumenda optio doloremque non quod voluptatem hic! Corrupti, molestiae placeat neque nisi enim commodi pariatur modi ea. 
 Temporibus, magnam iure dolore inventore vel consectetur, debitis perspiciatis optio nostrum maiores voluptatum ullam ipsum expedita qui ducimus commodi fuga incidunt. Nobis hic eaque odit nemo aliquam, cumque ea dolore. Fuga in corrupti natus, error dolorem autem dicta, omnis, aspernatur hic itaque expedita soluta voluptatum iure id ipsum vero rem quidem vel sapiente aperiam corporis. 
 Magni officia porro incidunt debitis! Qui optio aliquid voluptates dolor doloribus, repellendus amet hic doloremque, perferendis, quo velit! Asperiores quo vitae repudiandae ipsum animi perspiciatis, nesciunt tempora non laborum veniam corrupti quod deleniti. 
 Ea, beatae.',
'Mary Poppins',
3
),

(
4,
'Grande Muraille (Chine)',
'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum. 
 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet recusandae corrupti enim at neque sed, corporis eos vel dolores libero! Molestiae minus pariatur sunt sapiente magni asperiores quod, culpa magnam. Ea in deleniti iure quae quos neque. Officia harum quae esse asperiores, reiciendis assumenda optio doloremque non quod voluptatem hic! Corrupti, molestiae placeat neque nisi enim commodi pariatur modi ea. 
 Temporibus, magnam iure dolore inventore vel consectetur, debitis perspiciatis optio nostrum maiores voluptatum ullam ipsum expedita qui ducimus commodi fuga incidunt. Nobis hic eaque odit nemo aliquam, cumque ea dolore. Fuga in corrupti natus, error dolorem autem dicta, omnis, aspernatur hic itaque expedita soluta voluptatum iure id ipsum vero rem quidem vel sapiente aperiam corporis. 
 Magni officia porro incidunt debitis! Qui optio aliquid voluptates dolor doloribus, repellendus amet hic doloremque, perferendis, quo velit! Asperiores quo vitae repudiandae ipsum animi perspiciatis, nesciunt tempora non laborum veniam corrupti quod deleniti. 
 Ea, beatae.',
'Mary Poppins',
4
),

(
5,
'Taj Mahal (Inde)',
'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum. 
 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet recusandae corrupti enim at neque sed, corporis eos vel dolores libero! Molestiae minus pariatur sunt sapiente magni asperiores quod, culpa magnam. Ea in deleniti iure quae quos neque. Officia harum quae esse asperiores, reiciendis assumenda optio doloremque non quod voluptatem hic! Corrupti, molestiae placeat neque nisi enim commodi pariatur modi ea. 
 Temporibus, magnam iure dolore inventore vel consectetur, debitis perspiciatis optio nostrum maiores voluptatum ullam ipsum expedita qui ducimus commodi fuga incidunt. Nobis hic eaque odit nemo aliquam, cumque ea dolore. Fuga in corrupti natus, error dolorem autem dicta, omnis, aspernatur hic itaque expedita soluta voluptatum iure id ipsum vero rem quidem vel sapiente aperiam corporis. 
 Magni officia porro incidunt debitis! Qui optio aliquid voluptates dolor doloribus, repellendus amet hic doloremque, perferendis, quo velit! Asperiores quo vitae repudiandae ipsum animi perspiciatis, nesciunt tempora non laborum veniam corrupti quod deleniti. 
 Ea, beatae.',
'Mary Poppins',
5
),

(
6,
'Acropole d''Athènes (Grèce)',
'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum.',
 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium libero iste debitis fugit, nihil recusandae aut quisquam tempore reprehenderit accusantium quasi ad officiis officia illo tempora perferendis suscipit excepturi cum. 
 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet recusandae corrupti enim at neque sed, corporis eos vel dolores libero! Molestiae minus pariatur sunt sapiente magni asperiores quod, culpa magnam. Ea in deleniti iure quae quos neque. Officia harum quae esse asperiores, reiciendis assumenda optio doloremque non quod voluptatem hic! Corrupti, molestiae placeat neque nisi enim commodi pariatur modi ea. 
 Temporibus, magnam iure dolore inventore vel consectetur, debitis perspiciatis optio nostrum maiores voluptatum ullam ipsum expedita qui ducimus commodi fuga incidunt. Nobis hic eaque odit nemo aliquam, cumque ea dolore. Fuga in corrupti natus, error dolorem autem dicta, omnis, aspernatur hic itaque expedita soluta voluptatum iure id ipsum vero rem quidem vel sapiente aperiam corporis. 
 Magni officia porro incidunt debitis! Qui optio aliquid voluptates dolor doloribus, repellendus amet hic doloremque, perferendis, quo velit! Asperiores quo vitae repudiandae ipsum animi perspiciatis, nesciunt tempora non laborum veniam corrupti quod deleniti. 
 Ea, beatae.',
'Mary Poppins',
6
);

CREATE TABLE tags (
  id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  label varchar(255)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tags(label)
VALUES ('hiking'),('trailing'),('nature');


CREATE TABLE tag_to_articles(
  id int(11) UNSIGNED PRIMARY  KEY NOT NULL AUTO_INCREMENT,
  articles_id int NOT NULL,
  CONSTRAINT articles_id_fk FOREIGN KEY (articles_id) REFERENCES articles(id),
  tags_id int NOT NULL,
  CONSTRAINT tags_id_fk FOREIGN KEY (tags_id) REFERENCES tags(id)
);

-- INSERT INTO
--   article_to_tags(article_id, tags_id)
--   VALUES (), (), (), (),(), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (), (),

-- INSERT INTO item (title) VALUES ('Stuff'), ('Doodads');

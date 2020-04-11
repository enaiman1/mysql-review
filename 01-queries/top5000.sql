    USE top_songsDB;

CREATE TABLE top_albums (
  position INT NOT NULL,
  artist VARCHAR(100) NULL,
  album VARCHAR(100) NULL,
  year INT NULL,
  raw_total DECIMAL(10,4) NULL,
  raw_usa DECIMAL(10,4) NULL,
  raw_uk DECIMAL(10,4) NULL,
  raw_eur DECIMAL(10,4) NULL,
  raw_row DECIMAL(10,4) NULL,
  PRIMARY KEY (position)
);

 CREATE TABLE top_albums (
  position INT NOT NULL,
  artist VARCHAR(100) NULL,
  album VARCHAR(100) NULL,
  year INT NULL,
  raw_total DECIMAL(10,4) NULL,
  raw_usa DECIMAL(10,4) NULL,
  raw_uk DECIMAL(10,4) NULL,
  raw_eur DECIMAL(10,4) NULL,
  raw_row DECIMAL(10,4) NULL,
  PRIMARY KEY (position)
);     
      SELECT 
      top_albums.year, 
      top_albums.album, 
      top_albums.position, 
      top5000.song, 
      top5000.artist 
      FROM top_albums
      JOIN top5000
      ON 
      (top_albums.artist = top5000.artist AND top_albums.year = top5000.year)
      WHERE
      -- () not nessecary but helps mysql with the order of operatuion

      (top_albums.artist = "The Beatles" AND top5000.artist = "The Beatles")
      ORDER BY 
      top_albums.year, top_albums.position

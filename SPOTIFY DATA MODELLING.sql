CREATE TABLE Usertable(
    UserName VARCHAR(30) PRIMARY KEY,
    Email VARCHAR(50) NOT NULL,
    Passwords VARCHAR(50) NOT NULL,
    DOB VARCHAR(50) NOT NULL,
);

CREATE TABLE Artisttable(
    ArtistName VARCHAR(30) PRIMARY KEY,
    Genre VARCHAR(50) NOT NULL,
);

CREATE TABLE Albumtable(
    AlbumName VARCHAR(30) PRIMARY KEY,
    ReleaseDate VARCHAR(50) NOT NULL,
    ArtistName VARCHAR (30) FOREIGN KEY REFERENCES Artisttable(ArtistName),
);


CREATE TABLE Tracktable(
    TrackName VARCHAR(30) PRIMARY KEY,
    Duration VARCHAR(50) NOT NULL,
    Filepath VARCHAR(50) NOT NULL,
    AlbumName VARCHAR (30) FOREIGN KEY REFERENCES Albumtable(AlbumName),
);

CREATE TABLE Playlisttable(
    PlaylistName VARCHAR(30) PRIMARY KEY,
    UserName VARCHAR (30) FOREIGN KEY REFERENCES Usertable(UserName),
);


CREATE TABLE Playlist_Trackstable(
    PlaylistName VARCHAR (30) FOREIGN KEY REFERENCES Playlisttable(PlaylistName),
    TrackName VARCHAR (30) FOREIGN KEY REFERENCES Tracktable(TrackName),
);

CREATE TABLE Followerstable(
    UserName VARCHAR (30) FOREIGN KEY REFERENCES Usertable(UserName),
    ArtistName VARCHAR (30) FOREIGN KEY REFERENCES Artisttable(ArtistName),
);

CREATE TABLE Likestable(
    likedate DATETIME,
    UserName VARCHAR (30) FOREIGN KEY REFERENCES Usertable(UserName),
    TrackName VARCHAR (30) FOREIGN KEY REFERENCES Tracktable(TrackName),
);




SELECT * FROM Usertable
SELECT * FROM Artisttable
SELECT * FROM Albumtable
SELECT * FROM Tracktable
SELECT * FROM Playlisttable
SELECT * FROM Playlist_Trackstable
SELECT * FROM likestable
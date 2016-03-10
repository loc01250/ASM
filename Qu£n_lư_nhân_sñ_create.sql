-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:54:52.662




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV char(10)  NOT NULL,
    TenNV nvarchar(100)  NOT NULL,
    NgaySinh datetime  NOT NULL,
    GioiTinh nvarchar(10)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong money  NOT NULL,
    MaPhong char(10)  NOT NULL,
    TPhongBan_MaPhong char(10)  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongBan
CREATE TABLE TPhongBan (
    MaPhong char(10)  NOT NULL,
    TenPhong varchar(50)  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanVien_TPhongBan (table: TNhanVien)

ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhongBan 
    FOREIGN KEY (TPhongBan_MaPhong)
    REFERENCES TPhongBan (MaPhong)
;





-- End of file.


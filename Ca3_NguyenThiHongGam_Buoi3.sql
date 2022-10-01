
create database QLNV
use QLNV


--ex1--
create table PHONG  (
	MAPHONG char(3) not null,
	TENPHONG Nvarchar(40) not null,
	DIACHI Nvarchar(50) not null,
	TEL char(10),
)

alter table Phong add primary key(MAPHONG) 


create table DMNN (
	MANN char(2) not null,
	TENNN Nvarchar(20) not null,
)

alter table DMNN add primary key(MANN)

create table NHANVIEN (
	MANV char(5) not null,
	HOTEN Nvarchar(40) not null,
	GIOITINH char(3) not null,
	NGAYSINH date not null,
	LUONG int not null,
	MAPHONG char(3) not null,
	SDT char(10) not null,
	NGAYBC date,
)

alter table NHANVIEN add primary key(MANV)

create table TDNN (
	MANV char(5) not null,
	MANN char(2) not null,
	TDO char(1) not null,
)

alter table TDNN add primary key(MANV,MANN)

--ex2--
--data PHONG--
insert into PHONG(MAPHONG,TENPHONG,DIACHI,TEL)
values ('HCA',N'Hành chính tổ hợp',N'123, Láng Hạ, Đống Đa, Hà Nội','048585793'),
('KDA',N'Kinh Doanh',N'123, Láng Hạ, Đống Đa, Hà Nội','048574943'),
('KTA',N'Kỹ thuật',N'123, Láng Hạ, Đống Đa, Hà Nội','049480485'),
('QTA',N'Quản trị',N'123, Láng Hạ, Đống Đa, Hà Nội','048508585')

--data DMNN--
insert into DMNN (MANN, TENNN) values ('01', 'Anh'),
										('02','Nga'),
										('03',N'Pháp'),
										('04',N'Nhật'),
										('05',N'Trung Quốc'),
										('06',N'Hàn Quốc');

--data NHANVIEN--
insert into NHANVIEN (MANV, HOTEN, GIOITINH, NGAYSINH, LUONG, MAPHONG, SDT, NGAYBC)
		values('HC001', 'Nguyễn Thị Hà', 'Nữ', '8/27/1950', 2500000, 'HCA','', '2/8/1975'),
				('HC002','Trần Văn Nam', 'Nam', '6/12/1975' ,3000000 ,'HCA','', '6/8/1997'),
				('HC003', 'Nguyễn Thanh Huyền', 'Nữ', '7/3/1978', 1500000, 'HCA','','9/24/1999'),
				('KD001', 'Lê Tuyết Anh', 'Nữ', '2/3/1977' ,2500000 ,'KDA','', '10/2/2001'),
				('KD002', 'Nguyễn Anh Tú', 'Nam', '7/4/1942' ,2600000 ,'KDA','' ,'9/24/1999'),
				('KD003', 'Phạm An Thái', 'Nam', '5/9/1977', 1600000 ,'KDA','','9/24/1999'),
				('KD004', 'Lê Văn Hải', 'Nam', '1/2/1976' ,2700000, 'KDA','', '6/8/1997'),
				('KD005', 'Nguyễn Phương Minh','Nam','1/2/1980', 2000000 ,'KDA', '', '10/2/2001'),
				('KT001', 'Trần Đình Khâm', 'Nam', '12/2/1981', 2700000 ,'KTA', '', '1/1/2005'),
				('KT002', 'Nguyễn Mạnh Hùng', 'Nam', '8/16/1980', 2300000, 'KTA', '', '1/1/2005'),
				('KT003', 'Phạm Thanh Sơn', 'Nam', '8/20/1984', 2000000 ,'KTA','', '1/1/2005'),
				('KT004', 'Vũ Thị Hoài', 'Nữ', '12/5/1980' ,2500000, 'KTA','', '10/2/2001'),
				('KT005','Nguyễn Thu Lan', 'Nữ', '10/5/1977' ,3000000, 'KTA','', '10/2/2001'),
				('KT006','Trần Hoài Nam', 'Nam', '7/2/1978' ,2800000 ,'KTA','', '6/8/1997'),
				('KT007', 'Hoàng Nam Sơn', 'Nam', '12/3/1940', 3000000, 'KTA','', '7/2/1965'),
				('KT008', 'Lê Thu Trang', 'Nữ', '7/6/1950', 2500000 ,'KTA','', '8/2/1968'),
				('KT009', 'Khúc Nam Hải', 'Nam', '7/22/1980', 2000000 ,'KTA', '','1/1/2005'),
				('KT010', 'Phùng Trung Dũng', 'Nam', '8/28/1978', 2200000, 'KTA','', '9/24/1999');

--data TDNN--
insert into TDNN(MANV,MANN,TDO)
	 values ('HC001','01','A'),
			('HC001','02','B'),
			('HC002','01','C'),
			('HC002','03','C'),
			('HC003','01','D'),
			('KD001','01','C'),
			('KD001','02','B'),
			('KD002','01','D'),
			('KD002','02','A'),
			('KD003','01','B'),
			('KD003','02','C'),
			('KD004','01','C'),
			('KD004','04','A'),
			('KD004','05','A'),
			('KD005','01','B'),
			('KD005','02','D'),
			('KD005','03','B'),
			('KD005','04','B'),
			('KT001','01','D'),
			('KT001','04','E'),
			('KT002','01','C'),
			('KT002','02','B'),
			('KT003','01','D'),
			('KT003','03','C'),
			('KT004','01','D'),
			('KT005','01','C')

--ex3--
--cau 1--
insert into NHANVIEN (MANV, HOTEN, GIOITINH, NGAYSINH, LUONG, MAPHONG, SDT, NGAYBC)
		values ('QT001','Nguyễn Thị Hồng Gấm' ,'Nữ' , '11/03/2003', 150000, 'QTA', '' , '11/03/2021')

insert into TDNN (MANV, MANN, TDO) values ('QT001', '01', 'C'), ('QT001','04','A');

--cau2-- truy van --
select PHONG.TENPHONG, NHANVIEN.LUONG, DMNN.TENNN 
from PHONG, NHANVIEN, DMNN, TDNN
where NHANVIEN.HOTEN = 'Nguyễn Thị Hồng Gấm' and PHONG.MAPHONG = NHANVIEN.MAPHONG and TDNN.MANV= NHANVIEN.MANV and TDNN.MANN = DMNN.MANN 


--ex4--
--1. Đưa ra thông tin của nhân viên có mã số KT001?--
select * from NHANVIEN where NHANVIEN.MANV = 'KT001'
--2. Hãy sửa họ tên nhân viên trên thành ký tự tiếng Việt--
alter table NHANVIEN alter column HOTEN Nvarchar(40)
--3. Đưa ra danh sách các nhân viên nữ?--
select * from NHANVIEN where NHANVIEN.GIOITINH = 'Nữ' 
--4. Tìm những nhân viên có họ ‘Nguyễn’?--
select * from NHANVIEN where NHANVIEN.HOTEN like 'Nguyễn%' 
--5. Đưa ra danh sách các nhân viên có tên chứa từ ‘Văn’--
select * from NHANVIEN where NHANVIEN.HOTEN like '%Văn%'
--6. Đưa ra những nhân viên có tuổi dưới 30? (Đưa ra cả thông tin--
select *, datediff(year, NHANVIEN.NGAYSINH, GETDATE()) as AGE from NHANVIEN
where datediff(year, NHANVIEN.NGAYSINH, GETDATE())<30;
--7. Đưa ra danh sách các nhân viên có tuổi nằm trong khoảng 25 đến 30 tuổi?
select *, datediff(year, NHANVIEN.NGAYSINH, GETDATE()) as AGE from NHANVIEN
where datediff(year, NHANVIEN.NGAYSINH, GETDATE())<30 and datediff(year, NHANVIEN.NGAYSINH, GETDATE())>25;
--8. Đưa ra các mã nhân viên đã học các ngoại ngữ 01 ở trình độ C trở lên?
select NHANVIEN.*
from NHANVIEN, TDNN
where TDNN.MANN='01' and TDNN.TDO > 'C' and NHANVIEN.MANV = TDNN.MANV
--9. Đưa ra danh sách các nhân viên vào biên chế trước năm 2000?
select *,datediff(year, 1/1/2000, NHANVIEN.NGAYBC ) as test from NHANVIEN 
where datediff(year, 1/1/2000, NHANVIEN.NGAYBC)<100
--10. Đưa ra danh sách các nhân viên đã vào biên chế hơn 10 năm?
select * from NHANVIEN 
where datediff(year, NHANVIEN.NGAYBC, GETDATE())>10
--11. Đưa ra danh sách các nhân viên năm nay đủ tuổi nghỉ hưu (Nam >=60 tuổi, Nữ>=55 tuổi)?
select * from NHANVIEN
where NHANVIEN.GIOITINH='Nữ' and datediff(year, NHANVIEN.NGAYSINH , GETDATE())>=55
or NHANVIEN.GIOITINH='Nam' and datediff(year, NHANVIEN.NGAYSINH , GETDATE())>=60
--12. Cho biết thông tin (Mã phòng, tên phòng, điện thoại liên hệ) về các phòng ban?
select MAPHONG, TENPHONG, TEL from PHONG
--13. Đưa ra thông tin (họ tên, ngày sinh, ngày vào biên chế) về 2 nhân viên đầu tiên trong bảng nhân viên?
select top 2 HOTEN,NGAYSINH,NGAYBC from NHANVIEN
--14. Cho biết mã nhân viên, họ tên, ngày sinh, lương của các nhân viên có lương nằm trong khoảng từ 2000000 đồng đến 3000000 đồng?
select MANV,HOTEN,NGAYSINH,LUONG
from NHANVIEN
where luong > 2000000 and luong < 3000000
----15. Đưa ra danh sách các nhân viên chưa có số điện thoại?
select * from NHANVIEN where SDT=''
--16. Đưa ra danh sách các nhân viên sinh nhật trong tháng 3
select * from NHANVIEN where month(NGAYSINH)=3
--17. Hãy đưa ra danh sách nhân viên theo theo chiều tăng dần của lương?
select * from NHANVIEN order by LUONG 
--18. Cho biết lương trung bình của phòng Kinh doanh?
select AVG(LUONG) as N'Lương trung bình'
from NHANVIEN, PHONG
where PHONG.TENPHONG='Kinh Doanh' and  NHANVIEN.MAPHONG = PHONG.MAPHONG
--19. Cho biết tổng số nhân viên và trung bình lương phòng Kinh doanh?
select COUNT(NHANVIEN.MAPHONG)as N'Tổng nhân viên',AVG(NHANVIEN.LUONG) as N'Lương trung bình' 
from NHANVIEN, PHONG
where PHONG.TENPHONG='Kinh Doanh' and  NHANVIEN.MAPHONG = PHONG.MAPHONG
--20. Cho biết tổng lương của mỗi phòng?
select MAPHONG, sum(LUONG) as N'Tổng lương' from NHANVIEN group by MAPHONG;--21.Cho biết các phòng có tổng lương lớn hơn 500.0000?select distinct MAPHONG from NHANVIENWHERE (select SUM(LUONG) from NHANVIEN) > 500000;--22. Cho biết danh sách mã nhân viên, họ tên, mã phòng và tên phòng họ làm việc?select NHANVIEN.MANV, NHANVIEN.HOTEN, NHANVIEN.MAPHONG, PHONG.TENPHONGfrom NHANVIEN, PHONGwhere NHANVIEN.MAPHONG = PHONG.MAPHONG--23. Đưa ra danh sách tất cả các nhân viên cùng với thông tin về phòng ban của họselect * from NHANVIEN--24. Đưa ra danh sách tất cả các phòng cùng với thông tin về các nhân viên của các phòng (kể cả các phòng chưa có nhân viên nào)?select PHONG.*,NHANVIEN.*from NHANVIEN, PHONGwhere PHONG.MAPHONG = NHANVIEN.MAPHONG
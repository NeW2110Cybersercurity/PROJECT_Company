insert into Lop
values ('SE17D04','lap trinh khoa 17-04',null)

insert into Sinhvien (masv, tensv,malop)
values ('sv02',N'Nguyen Van Binh Thuong', 'SE17D04')

insert into Sinhvien (masv, tensv,malop)
values ('sv03',N'Nguyen Van Bat Thuong', 'SE17D04')

update Sinhvien
set malop = 'SE17D05'
where tensv = N'Nguyen Van Binh Thuong'
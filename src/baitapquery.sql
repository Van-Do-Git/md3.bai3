use quanlysinhvien;
# Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
# Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
# Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
# Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
# Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu
# sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select * from student where StudentName like 'h%';
select * from class where month(StartDate )=12;
select * from subject where Credit between 5 and 7;
update student set ClassId =2 where StudentName = 'Hung';
select s.StudentName , s2.SubName, Mark from mark
    join student s on s.StudentId = mark.StudentId
    join subject s2 on s2.SubId = mark.SubId order by Mark desc, SubName asc;





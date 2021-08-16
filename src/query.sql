use quanlysinhvien;
# Hiển thị danh sách tất cả các học viên
# Hiển thị danh sách các học viên đang theo học.
# Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ.
# Hiển thị danh sách học viên lớp A1
# Hiển thị điểm môn CF của các học viên.
select * from student;
select * from student where Status = true;
select * from subject where Credit <10;
select s.StudentName,c.ClassName  from student s join class c on s.ClassId = c.ClassID where ClassName = 'A1';
select s.StudentName, c.SubName, mark.Mark from mark join student s on s.StudentId = mark.StudentId join subject c on c.SubId = mark.SubId where c.SubName = 'CF';
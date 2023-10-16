select empssn, empName, empBirthdate, year(GETDATE()) - year(empBirthdate) as Age -- Thông tin mà mình cần hiển thị
from tblEmployee, tblDepartment
where  tblEmployee.depnum = 1 and tblEmployee.depnum = tblDepartment.depnum

select empssn, empName, depName, e.depNum -- 1
from tblDepartment as d, tblEmployee as e
where d.depnum = e.depnum and d.depName = N'Phòng Nghiên cứu và phát triển'

select proNum,proName,depName    -- 2
from tblProject, tblDepartment
where tblDepartment.depName = N'Phòng Nghiên cứu và phát triển'

select proNum,proName,depName    -- 3
from tblProject, tblDepartment
where tblProject.proName = N'ProjectB'

select tblemployee.empSSN,tblemployee.empName -- 5
from  tblemployee,tbldependent
where tblEmployee.supervisorSSN = '30121050037' and tblemployee.supervisorssn = tbldependent.empssn

select tblEmployee.empSSN,empName -- 4 
from  tblemployee,tbldependent
where tbldependent.empSSn = '30121050004' and tbldependent.empssn = tblemployee.supervisorssN

select empSSn, empName -- 4 của cô -- 
from tblEmployee
where supervisorSSN = ( select empSSn from tblEmployee where empName = N'Mai Duy An')

select tblproject.proname, tbllocation.locnum, locname  --6--
from tblproject, tbllocation
where tblproject.proName = 'ProjectA'and tblproject.pronum = tbllocation.locnum

select tbllocation.locname, pronum,proname  -- 7
from tblproject, tbllocation
where tbllocation.locname = N'Tp Hồ Chí Minh' and tbllocation.locnum = tblproject.pronum 

select tbldependent.empSSN ,depname,depbirthdate,year(GETDATE()) - year(depBirthdate) as Age -- 8--
from tbldependent
where year(GETDATE()) - year(depBirthdate) > '18' 

select tbldependent.empSSN ,depname,depsex -- 9--
from tbldependent
where depsex =  'M'

select tbldepartment.depnum, depname, locname  --10--
from tbldepartment, tblLocation
where tblLocation.locnum = tblDepartment.depnum and tblDepartment.depname = N'Phòng Nghiên cứu và phát triển'

select depnum, count(empssn) Soluong
from tblEmployee
group by depNum
having count(Empssn) >=5 

select * 
from tblEmployee
order by empbirthdate desc

select depnum, count(empssn) Soluong
from tblEmployee
group by depNum
order by count( empssn) desc

select pronum,proname, depname --11--
from tblproject as p , tbldepartment as d, tbllocation as l
where l.locname = N'Tp Hồ Chí Minh' and l.locnum = p.pronum

select e.empName, e.empssn, d.deprelationship
from tbldependent as d, tblemployee as e, tbldepartment as de
where de.depName = N'Phòng Nghiên cứu và phát triển'
and d.depsex = 'F' and de.depnum = e.e



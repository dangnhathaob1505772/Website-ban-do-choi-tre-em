declare
      cursor c_Emp IS
      select * from emp
      where extract (year from sysdate)- extract(year from hiredate) >25
      and sal <2000;
      v_Emp c_Emp%rowtype;
  Begin
   open c_Emp;
   loop
      fetch c_Emp into v_EMp;
        exit when c_Emp%notfound;
        if v_Emp.comm is null then v_Emp.comm := 500;
        else
          v_Emp.comm :=v_Emp.comm+500;
        end if;
        
        Update Emp
        Set comm = v_Emp.comm
        where empno = v_Emp.empno;
        
        insert into bonus(ename, job,sal,comm)
            values(v_Emp.ename, v_Emp.job, v_Emp.sal,v_Emp.comm);
        end loop;
        commit;
        close c_Emp;
  END;
  
/*cau5b*/

create table emp_retire(
    empno number(4) not null,
    ename varchar2(9),
    job varchar2(9),
    mgr number(7,2),
    hiredate date,
    sal number(7,2),
    comm number(7,2),
    deptno number(2)
);


declare
      cursor cempretire is
      select * from emp where extract(year from sysdate)-
          extract(year from sysdate) >=28
      for update;
begin
      for emp_rec in cempretire
      loop
      insert into emp_retire(empno, ename, job, mgr, hiredate, sal, comm, deptno)
             values(emp_rec.empno, emp_rec.ename, emp_rec.job, emp_rec.mgr, emp_rec.hiredate, emp_rec.sal, emp_rec.comm, emp_rec.deptno);
      delete from emp where current of cempretire;
      end loop;
  end;
  
  /*cau5c*/
  
  declare
        manager emp.mgr%type;
        cursor c_emp(mgr_no number) is
            select sal from emp where mgr = mgr_no
             for update of sal;
  begin
        select empno into manager from emp where ename = 'KING';
        for emp_rec in c_emp(manager)
        loop
           update scott.emp set sal= emp_rec.sal * 1.05
            where current of c_emp;
        end loop;
        commit;
  end;
        
  select * from emp;
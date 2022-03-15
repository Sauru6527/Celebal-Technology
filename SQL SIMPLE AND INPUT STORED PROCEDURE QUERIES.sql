--use celebal;
--select * from cricket1;
/*
create procedure RUNBATNAMEDON  --SIMPLE STORED PROCEDURE
as
begin
   
       select bastsmannamE from cricket1;
    
end


execute RUNBATnameDONE
*/


--PARAMETERIZED STORED PROCEDURE
/*
create procedure SPGETSCOREANDBALLS
@score varchar(11), @balls int
as
begin
     select score,balls from cricket1; --you can use where and order by also
end

SPGETSCOREANDBALLS 32,10000         --SPECDIFY THE NAME OF COLN IF COMPILER SHOWS DATATYPE CONVERSION ERROR
*/


--sp_helptext spgetscoreandballs   --TEXT OF STOREDPROCEDURE --ITS SYSTEM STORED PROCEDURE NOT USER DEFINED SO DONT USE

/* DISADVANTAGE: AMBIGUITY ERROR AND IN  FUTURE RELEASE NEW SQL VERSION THERE MAY BE NAME COMFLEK*/

-- TO CHNAGE PROCEDURE WE USE ALTER 
alter procedure SPGETSCOREANDBALLS
@score varchar(11), @balls int
as
begin
     select score,balls from cricket1
	 where score>30
	 order by score;
end

execute SPGETSCOREANDBALLS 1,100


--drop procedure <<<<<procedure_name>>>>


create procedure SPGETSCOREANDBALLSencrypted
@score varchar(11), @balls int
with ENCRYPTION
as
begin
     select score,balls from cricket1
	 where score>30
	 order by score;
end


execute SPGETSCOREANDBALLSencrypted 32,100
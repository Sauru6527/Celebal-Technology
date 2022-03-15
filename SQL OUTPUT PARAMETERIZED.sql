--STORED PROCEDURE WITH OUTPUT PARAMETERS
/*
select * from cricket1;


create procedure spgetballtypescountbybatssman
@batssmanname varchar(11),
@balls int output
as
begin
 
   select bastsmanname from cricket1;

end


declare @sname int
execute spgetballtypescountbybatssman '2'/*IF I GIVE ANYTHIN IT GETS EXECUTE WHY ?*/,@sname output
print  @sname



*/

--to get detailed about our stored procedure the parametr it is excepting
-- sp_help spgetballtypescountbybatssman


--MORE INFO ABOUT TABLE 
--sp_help cricket1

--TEXT OF STORED PROCEDURE
--sp_helptext spgetballtypescountbybatssman

--NOTE:ENCRYPTED TEXT CANNOT BE VIEWED
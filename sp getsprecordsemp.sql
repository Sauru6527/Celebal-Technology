--SELECT * FROM EMPDATA;

ALTER PROCEDURE SPGETRECORDEMP
@startdate datetime,
@enddate datetime

AS
BEGIN

    --SET NOCOUNT ON;

	select * from EMPDATA 
	where joindate between @startdate and @enddate
END
GO

execute SPGETRECORDEMP @startdate ='2002-12-12',@enddate='2010-11-25'






select *from Empdata
where joindate between '2002-12-12' and '2010-11-25'

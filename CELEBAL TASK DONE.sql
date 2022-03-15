declare @StartDate DATETIME, @EndDate DATETIME

SELECT @STARTDATE = '2021-1-01',@ENDDATE = '2023-12-01';


select distinct dateadd(mm,number,@startdate/*MUST BE SAME*/) as _DATES_ ,
                 datename(weekday/*month*/,dateadd(mm,number,@startdate/*MUST BE SAME*/)) as _WEEKNAME_,
				 datename(day,dateadd(mm,number,@startdate)) AS _DAY_, 
				  datename(month,dateadd(mm,number,@startdate)) AS _MONTH_,
				  datename(year,dateadd(mm,number,@startdate)) AS _YEAR_,
				  datename(week,dateadd(mm,number,@startdate)) AS _WEEKNUM_,
				  datename(quarter,dateadd(mm,number,@startdate)) AS _QUARTER_  
				 from master..spt_values
where

dateadd(MM,number,@startdate) <= @enddate
AND 
number>=0  and type = 'p';




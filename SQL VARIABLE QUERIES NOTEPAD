declare @date datetime
set @date = '2002-03-11'

select month(@date) as month

select day(@date) as DAY

  
select year(@date) as year

select datepart(Quarter,@date) as [Calendar_Quarter]

select datename(weekday,@date) as [MTWTFSS]

select left(datename(weekday,@date),3) as [MTWTFSS]

select datepart(week,@date) as [FISCAL_WEEK]


select cast(day(@date) as nvarchar(11)) +
case
     when day(@date) in ('1','21','31') then 'st'
when day(@date) in ('2','22') then 'nd'
when day(@date) in ('3','23') then 'rd'
else 'th' end as [DAY_SUFFIX]





declare @date datetime
 set @date='2000-08-01'
select datepart(Quarter,@date)as [Calendar_Quarter]

select cast(year(@date) as nvarchar(10)) as [year]

select [skdate] = cast(year(@date) as varchar(11)) +
case
when month(@date) between 1 and 9 then ('0' +cast(month(@date) as varchar(11)))
else
cast(month(@date) as varchar(4)) 
end
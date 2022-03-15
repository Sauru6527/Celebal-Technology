
declare @date datetime
set @date = '2002-03-12'

select Month(@date) as [Month]
select cast(year(@date) as nvarchar(10)) as [year]


declare @name varchar(100) --= 'NILESH'
set @name='Nilesh'
select rigt(@name,3) as collegename
















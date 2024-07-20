create database T20_worldcup_2024;
use T20_worldcup_2024;

select * from ICC;

-- using of Data Manipulation Language (DML)

select Venue, Winners
from ICC;

select Date, Stage
from ICC;

insert into ICC (Venue, Stage)
values ('Delhi', 'Group E');

drop table ICC;

select 1st_Team, 2nd_Team
from ICC;

update ICC
set Top_Scorer='Virat Kohil'
where Winning_Margin= 3;

Delete from ICC
where Top_Scorer='Litton Das';

-- Aggregate Functions Commands

select count(Winning_Margin)
from ICC;

select sum(Highest_Score)
from ICC;

select avg(Winning_Margin)
from ICC;

select min(Highest_Score) as Score
from ICC;

select max(First_Innings_Score)
from ICC;

select current_date();




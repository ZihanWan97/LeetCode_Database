-- Table: Point

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | x           | int  |
-- +-------------+------+
-- x is the primary key column for this table.
-- Each row of this table indicates the position of a point on the X-axis.
 

-- Write an SQL query to report the shortest distance between any two points from the Point table.

-- The query result format is in the following example.

 

-- Example 1:

-- Input: 
-- Point table:
-- +----+
-- | x  |
-- +----+
-- | -1 |
-- | 0  |
-- | 2  |
-- +----+
-- Output: 
-- +----------+
-- | shortest |
-- +----------+
-- | 1        |
-- +----------+
-- Explanation: The shortest distance is between points -1 and 0 which is |(-1) - 0| = 1.



# Write your MySQL query statement below
--2022-04-02

--solution-1
select min(abs(a.x-b.x)) as shortest
from Point a, Point b
where b.x != a.x

--solution-2
select min(abs(a.x-b.x)) as shortest
from Point a
join Point b on b.x != a.x

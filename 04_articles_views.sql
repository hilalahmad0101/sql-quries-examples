-- Write a solution to find all the authors that viewed at least one of their own articles.


-- Example 1:

-- Input: 
-- Views table:
-- +------------+-----------+-----------+------------+
-- | article_id | author_id | viewer_id | view_date  |
-- +------------+-----------+-----------+------------+
-- | 1          | 3         | 5         | 2019-08-01 |
-- | 1          | 3         | 6         | 2019-08-02 |
-- | 2          | 7         | 7         | 2019-08-01 |
-- | 2          | 7         | 6         | 2019-08-02 |
-- | 4          | 7         | 1         | 2019-07-22 |
-- | 3          | 4         | 4         | 2019-07-21 |
-- | 3          | 4         | 4         | 2019-07-21 |
-- +------------+-----------+-----------+------------+
-- Output: 
-- +------+
-- | id   |
-- +------+
-- | 4    |
-- | 7    |
-- +------+

-- Solution

select author_id as id from Views where author_id = viewer_id group by id order by id asc ; 

-- output
-- | id |
-- | -- |
-- | 4  |
-- | 7  |
-- LeetCode 584. Find Customer Referee (Easy) | Topic: Select
--
-- Approach:
--   We want everyone NOT referred by customer 2. That includes people with
--   no referee (NULL). "referee_id <> 2" alone drops NULL rows, because
--   NULL <> 2 evaluates to UNKNOWN (not TRUE), and WHERE keeps only TRUE.
--   So explicitly add "OR referee_id IS NULL".
--
-- Concepts to memorize:
--   * Three-valued logic: TRUE / FALSE / UNKNOWN. WHERE keeps only TRUE.
--   * Any comparison with NULL (=, <>, <, >) yields UNKNOWN.
--   * Test for NULL with IS NULL / IS NOT NULL, never "= NULL".
--
-- Alternative (PostgreSQL): null-safe comparison
--   WHERE referee_id IS DISTINCT FROM 2;

SELECT name
FROM Customer
WHERE referee_id <> 2
   OR referee_id IS NULL;

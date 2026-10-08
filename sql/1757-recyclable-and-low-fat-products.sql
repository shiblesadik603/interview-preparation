-- LeetCode 1757. Recyclable and Low Fat Products (Easy) | Topic: Select
--
-- Approach:
--   Filter rows with WHERE; both conditions must hold, so combine with AND.
--
-- Concepts to memorize:
--   * SELECT = which columns, FROM = which table, WHERE = which rows
--   * Text literals use single quotes: 'Y'
--   * Equality is a single "=" (not "==")
--
-- Complexity: O(n) single table scan.

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';

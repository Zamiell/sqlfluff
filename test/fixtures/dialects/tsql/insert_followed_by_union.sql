-- Test for issue #7326: INSERT followed by UNION without semicolon
-- These should parse as separate statements
BEGIN
    INSERT INTO #temp(a, b)
    SELECT x, y
    FROM table1
    GROUP BY x, y

    SELECT c, d
    FROM table2
    UNION ALL
    SELECT e, f
    FROM table3
END

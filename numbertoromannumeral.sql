# CTE
WITH RomanCiphers (value, numeral) AS (
	SELECT 1000, 'M' UNION ALL
    SELECT 500, 'D' UNION ALL
    SELECT 100, 'C' UNION ALL
    SELECT 10, 'X' UNION ALL
    SELECT 9, 'IX' UNION ALL
    SELECT 8, 'VIII' UNION ALL
    SELECT 7, 'VII' UNION ALL
    SELECT 6, 'VI' UNION ALL
    SELECT 5, 'V' UNION ALL
    SELECT 4, 'IV' UNION ALL
    SELECT 3, 'III' UNION ALL
    SELECT 2, 'II' UNION ALL
    SELECT 1, 'I'
)
# i.e.
# SELECT *
# FROM RomanCiphers

SELECT numeral
FROM RomanCiphers
WHERE value <= 9
# Replace @input_number (which is now 10) with the number that is being converted
# Must be in the CTE or the new roman numeral needs to be added
# i.e. SELECT 900, 'CM' UNION ALL
# Otherwise, it will select the closest number that is less than
# i.e. SELECT 900, 'CM' UNION ALL gives the result of 'D' viz. 500
ORDER BY value DESC
LIMIT 1
;

# i.e. (for [open-source] reading when not executed in [MySQL])
# To obtain a result via execution would require this to be before the other ; as seen above
SELECT numeral
FROM RomanCiphers
WHERE value <= 8
ORDER BY value DESC
LIMIT 1
# THE RETURN UPON EXECUTION = VIII
# THIS WILL NOT EXECUTE A RESULT WITHOUT BEING BEFORE THE OTHER ; !!!!
;
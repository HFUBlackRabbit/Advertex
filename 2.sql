SELECT
    cbp1.book_id, cbp2.book_id, COUNT(cbp1.category_id) AS c
FROM
    category_book_pivot cbp1
        JOIN category_book_pivot cbp2 ON cbp1.book_id < cbp2.book_id AND cbp1.category_id = cbp2.category_id
GROUP BY
    cbp1.book_id,
    cbp2.book_id
HAVING
        c > 9
ORDER BY c DESC;
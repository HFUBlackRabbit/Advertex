SELECT b.*, COUNT(c.id) as c FROM books as b
                                      JOIN category_book_pivot AS cbp ON b.id = cbp.book_id
                                      JOIN categories AS c ON c.id = cbp.category_id
WHERE b.edition > 5000 AND b.cover = 'tough'
GROUP BY b.id
HAVING c > 2;
-- Task 3: Writing Basic SELECT Queries

-- 1. Select all columns from Author table
SELECT * FROM Author;

-- 2. Select specific columns: book title and publication year
SELECT title, publication_year FROM Book;

-- 3. Select books published after 2015
SELECT * FROM Book
WHERE publication_year > 2015;

-- 4. Find members with Gmail addresses
SELECT * FROM Member
WHERE email LIKE '%@gmail.com';

-- 5. Find authors who are either Indian or American
SELECT * FROM Author
WHERE nationality = 'Indian' OR nationality = 'American';

-- 6. List all loans with loan and return dates
SELECT loan_id, member_id, book_id, loan_date, return_date FROM Loan;

-- 7. Get members who borrowed books in July 2024
SELECT * FROM Loan
WHERE loan_date BETWEEN '2024-07-01' AND '2024-07-31';

-- 8. Sort books by publication year (newest first)
SELECT * FROM Book
ORDER BY publication_year DESC;

-- 9. Limit to top 3 most recent books
SELECT * FROM Book
ORDER BY publication_year DESC
LIMIT 3;

-- 10. Get books priced between 200 and 600
SELECT * FROM Book
WHERE price BETWEEN 200 AND 600;

-- 11. Get all librarians sorted alphabetically
SELECT * FROM Librarian
ORDER BY name ASC;

-- 12. Show book titles with their loaned member names
SELECT b.title, m.name AS borrowed_by
FROM Book b
JOIN Loan l ON b.book_id = l.book_id
JOIN Member m ON l.member_id = m.member_id;

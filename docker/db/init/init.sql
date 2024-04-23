CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(255) NOT NULL
);

INSERT INTO books (title, author) VALUES ('To Kill a Mockingbird', 'Harper Lee');
INSERT INTO books (title, author) VALUES ('1984', 'George Orwell');
INSERT INTO books (title, author) VALUES ('Pride and Prejudice', 'Jane Austen');
INSERT INTO books (title, author) VALUES ('The Great Gatsby', 'F. Scott Fitzgerald');

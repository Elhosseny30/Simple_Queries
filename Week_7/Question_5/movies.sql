CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name        VARCHAR(100) NOT NULL,
    customer_email       VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE movies (
    movie_id   INT IDENTITY(1,1) PRIMARY KEY,
    movie_title      VARCHAR(255) NOT NULL,
    movie_genre      VARCHAR(50) NOT NULL
);

CREATE TABLE rentals (
    rental_id   INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id) ON DELETE CASCADE,
    movie_id    INT FOREIGN KEY REFERENCES movies(movie_id) ON DELETE CASCADE,
    rental_date DATETIME DEFAULT GETDATE(),
    return_date DATETIME NULL -- NULL if not yet returned
);




create view  active_rentals as 
select rental_id, c.customer_name, c.customer_email, movie_title, rental_date
from rentals r join movies m on r.movie_id = m.movie_id 
join customers c on r.customer_id = c.customer_id
where return_date = NULL;


-- simple queries and can easy to use 
-- securtiy and access control 

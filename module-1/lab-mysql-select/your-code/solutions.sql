

# Challange 1

SELECT authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME , titles.title as TITLES , publishers.pub_name as PUBLISHERS
FROM authors 
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN publishers ON titles.pub_id = publishers.pub_id;

#Challange 2 

SELECT authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME, publishers.pub_name as PUBLISHERS, COUNT(*) as COUNTER
FROM authors 
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN publishers ON titles.pub_id = publishers.pub_id
GROUP BY authors.au_id , publishers.pub_id;

#Challange 3 

SELECT authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME, SUM(sales.qty) as TOTALSALES
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN sales ON titles.title_id = sales.title_id
GROUP BY AUTHOR_ID 
ORDER BY TOTALSALES desc
LIMIT 3;

#Challange 4


SELECT authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME, COALESCE(SUM(sales.qty), 0) as TOTALSALES
FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
GROUP BY AUTHOR_ID 
ORDER BY TOTALSALES desc ;

 # Bonus

SELECT 
	authors.au_id as AUTHOR_ID, 
	authors.au_lname as LAST_NAME, 
	authors.au_fname as FIRST_NAME,
	COALESCE(SUM(sales.qty * titles.price + titleauthor.royaltyper*roysched.royalty), 0) as TOTALSALES

FROM authors
LEFT JOIN titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales ON titles.title_id = sales.title_id
LEFT JOIN roysched ON titleauthor.title_id = roysched.title_id

GROUP BY AUTHOR_ID 
ORDER BY TOTALSALES desc
LIMIT 3
;






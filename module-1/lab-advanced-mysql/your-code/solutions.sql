

# LAb- advanced-sql 


SELECT
	titles.title_id as Titles,
	authors.au_id as Author_ID,
	((titles.price*sales.qty*(titles.royalty/100))/(titleauthor.royaltyper/100)) as PROFIT

FROM 
	authors
	INNER JOIN sales ON sales.title_id = titles.title_id
	INNER JOIN titles ON titles.title_id = authors.au_id
	INNER JOIN roysched ON roysched.title_id = titles.title_id
	INNER JOIN titleauthor ON titleauthor.title_id = titles.title_id



/*
#	(SELECT
#		t.title_id,
#		a.au_id,
#		(sum(((t.price*s.qty*(t.royalty/100))/(ta.royaltyper/100)))) as ROYALTIES
#	FROM authors
#	LEFT JOIN titleauthor ta ON a.au_id = ta.au_id
#	LEFT JOIN titles t ON ta.title_id = t.title_id
#	LEFT JOIN roysched r ON ta.title_id = r.title_id)
;


# genomgång
#1
SELECT
	titles.title_id as Titles,
	authors.au_id as Author_ID,
	((titles.price*sales.qty*(titles.royalty/100))/(titleauthor.royaltyper/100)) as ROYALTIES

INNER JOIN sales ON titleid från sales = med titleid från titles
OSV...

#2




# LAb- advanced-sql 

SELECT
	titles.title_id as Titles,
	authors.author_id as Author_ID,
	(titles.price*sales.qty*(titles.royalty/100))/(titleauthor.royaltyper/100) as Royalties
	






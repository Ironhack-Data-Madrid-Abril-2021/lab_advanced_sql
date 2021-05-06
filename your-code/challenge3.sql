CREATE TABLE most_profitable_authors SELECT au_id as Author , sum(price*qty *royalty / 100 *royaltyper/ 100) as sales_royalty
FROM publications.authors
LEFT JOIN publications.titleauthor using (au_id)
LEFT JOIN publications.sales using (title_id) 
LEFT JOIN publications.titles using (title_id)
Group by title_id, au_id
order by sales_royalty DESC
limit 3;
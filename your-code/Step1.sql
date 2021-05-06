SELECT au_id as Author , au_fname as lastname , au_lname as firstname ,title, (price*qty *royalty / 100 *royaltyper/ 100) as sales_royalty
FROM publications.authors
LEFT JOIN publications.titleauthor using (au_id)
LEFT JOIN publications.sales using (title_id) 
LEFT JOIN publications.titles using (title_id) ;
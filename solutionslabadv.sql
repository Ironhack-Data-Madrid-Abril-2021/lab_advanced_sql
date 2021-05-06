CHALLENGE 1:

SELECT title_id, au_id as AUTHOR, au_lname AS LAST_NAME, au_fname AS FIRST_NAME, 
(price * qty * royalty / 100 * royaltyper / 100) as sales_royalty
FROM publications.authors
left join publications.titleauthor using (au_id)
left join publications.sales using (title_id)
left join publications.titles using (title_id);
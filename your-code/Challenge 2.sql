CREATE TABLE most_profiting_authors SELECT title_id, au_id as AUTHOR, 
SUM((price * qty * royalty / 100 * royaltyper / 100)) as sales_royalty
FROM publications.authors
left join publications.titleauthor using (au_id)
left join publications.sales using (title_id)
left join publications.titles using (title_id)
group by title_id, au_id
order by sales_royalty desc
LIMIT 3;

CREATE TABLE most_profiting_authors SELECT title_id, sum((titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100)) as sales_royalty FROM publications.sales 
left join titles using(title_id) left join titleauthor using(title_id) group by title_id, au_id order by sales_royalty desc limit 3;

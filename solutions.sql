Challenge 1

use publication;
select authors.au_id as 'Author ID', 
authors.au_lname as 'Last name',
authors.au_fname as 'First tname',
titles.title as 'Title',
publishers.pub_id as publishers

from authors
inner join titleauthor on titleauthor.au_id = authors.au_id
inner join titles on titles.title_id = titleauthor.title_id
inner join publishers on publishers.pub_id = titles.pub_id
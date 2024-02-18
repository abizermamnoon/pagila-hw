/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
select title
from film
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
where name ilike 'Family'
order by title;

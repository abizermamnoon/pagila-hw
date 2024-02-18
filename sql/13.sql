/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
select film.film_id, title, language.language_id, name
from film
join language on film.language_id = language.language_id
where title ilike 'k%' or title ilike 'q%'
order by title;

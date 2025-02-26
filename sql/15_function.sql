/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */
CREATE OR REPLACE FUNCTION category_counts_by_language(TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
-- FIXME: implementation goes here
select category.name, count(category.name)
from category
join film_category on category.category_id = film_category.category_id
join film on film_category.film_id = film.film_id
join language on film.language_id = language.language_id
where language.name ilike '%' || $1 || '%'
group by category.name, language.name;
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');

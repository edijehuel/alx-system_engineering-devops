-- Lists all show, and all genres linked to that show, from the database.
-- if show doesn't have a genrem display NULL in the genre column
SELECT title, tv_genres.name FROM tv_shows
LEFT JOIN tv_show_genres ON tv_show_genres.show_id = tv_shows.id
LEFT JOIN tv_genres ON tv_genres.id = tv_show_genres.genre_id
ORDER BY title, tv_genres.name;

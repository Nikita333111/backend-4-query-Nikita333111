-- SQL script for ex_15.sql
SELECT
    t.name as track_name,
    a.Title as album,
    m.name as media_type,
    g.name as genre
from
    Track t
left join
    Album a
on
    t.AlbumId = a.AlbumId
join
    MediaType m
on
    m.MediaTypeId = t.MediaTypeId
join
    Genre g
on
    g.GenreId = t.GenreId;
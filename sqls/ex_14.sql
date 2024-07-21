-- SQL script for ex_14.sql
SELECT COUNT(PT.TrackId) AS track_count,
       P.Name
FROM
    Playlist P
LEFT JOIN
    PlayListTrack PT
ON
    PT.PlaylistId = P.PlaylistId
GROUP BY P.PlaylistId, P.Name;
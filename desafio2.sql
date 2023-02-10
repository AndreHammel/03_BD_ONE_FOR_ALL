SELECT
	COUNT(DISTINCT s.id_song) cancoes,
	COUNT(DISTINCT a.id_artist) artistas,
	COUNT(DISTINCT al.id_albun) albuns
FROM SpotifyClone.Songs s 
INNER JOIN SpotifyClone.Albuns al ON al.id_albun = s.id_albun
INNER JOIN SpotifyClone.Artists a ON a.id_artist = al.id_artist; 

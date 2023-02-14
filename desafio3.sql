SELECT 
	u.user_name usuario, 
	COUNT(hus.id_song) qt_de_musicas_ouvidas,
	ROUND(SUM(s.duration) / 60, 2) total_minutos
FROM SpotifyClone.Users u 
INNER JOIN SpotifyClone.History_users_songs hus 
	ON u.id_user = hus.id_user
INNER JOIN SpotifyClone.Songs s 
	ON s.id_song = hus.id_song
GROUP BY u.id_user
ORDER BY u.user_name;

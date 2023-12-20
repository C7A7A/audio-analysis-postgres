CREATE TABLE IF NOT EXISTS audio_data (
	id SERIAL PRIMARY KEY,
   	name VARCHAR,
	category VARCHAR,
	extension VARCHAR,
	audio BYTEA
);

SELECT * FROM audio_data LIMIT 10;

SELECT encode(audio, 'hex') AS data FROM audio_data LIMIT 10;

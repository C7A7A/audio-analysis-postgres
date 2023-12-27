CREATE TABLE IF NOT EXISTS audio_data (
	id SERIAL PRIMARY KEY,
   	name VARCHAR,
	category VARCHAR,
	extension VARCHAR,
	audio BYTEA
);

CREATE TABLE IF NOT EXISTS audio_analysed_data (
    id SERIAL PRIMARY KEY,
    audio_data_id INTEGER REFERENCES audio_data(id),
    duration VARCHAR,
    tempo VARCHAR,
    raw_audio_plot BYTEA,
    amplitude_plot BYTEA,
    spectogram_plot BYTEA,
    mel_spectogram_plot BYTEA,
    chroma_plot BYTEA
);


-- SELECT * FROM audio_data LIMIT 10;
-- SELECT encode(audio, 'hex') AS data FROM audio_data LIMIT 10;
-- SELECT * FROM audio_analysed_data;
-- SELECT count(*) FROM audio_analysed_data;

-- drop table audio_analysed_data;
	

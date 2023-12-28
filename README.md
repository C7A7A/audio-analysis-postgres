This project aims to analyse audio dataset using librosa library and work with audio and image data stored in database as bytes.

<ol>
    <li> insert-data.ipynb: converts audio files to bytes and inserts them into database. To make it work, you need to create a table in postgres and store audio files in "data" folder. Audio files are taken from the dataset provided below. </li>
    <li> convert-bytea-to-audio.ipynb: converts bytes from database to audio files and saves them in "audio_data" folder. This is the same data as in "data" folder, but for the sake of this project I wanted to convert bytes to audio files. </li>
    <li> save-metadata-to-csv.ipynb: selects metadata from database and saves them in csv file. </li>
    <li> analyse-audio.ipynb: analyses and plots data for example audio file. After that it iterates over all audio files, extract data, create plots, convert plots to bytes and stores all of it in database. </li>
    <li> retrieve-data.ipynb: extracts the analysed data based on the id, converts the images and displays the data. </li>
</ol>

sql_scripts: scripts to create and drop tables in postgres

dataset paper: https://www.researchgate.net/publication/220723598_A_Benchmark_Dataset_for_Audio_Classification_and_Clustering <br/>
data: https://www-ai.cs.tu-dortmund.de/audio.html
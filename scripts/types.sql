CREATE TYPE enum_titletype AS enum ( 'movie', 'short', 'titleType', 'tvEpisode',
'tvMiniSeries', 'tvMovie', 'tvPilot', 'tvSeries', 'tvShort', 'tvSpecial',
'video', 'videoGame' );

CREATE TYPE enum_genre AS enum ( 'Action', 'Adult', 'Adventure', 'Animation',
'Biography', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Family', 'Fantasy',
'Film-Noir', 'Game-Show', 'History', 'Horror', 'Music', 'Musical', 'Mystery',
'News', 'Reality-TV', 'Romance', 'Sci-Fi', 'Short', 'Sport', 'Talk-Show',
'Thriller', 'War', 'Western' );

CREATE TYPE enum_job_category AS enum ( 'actor', 'actress', 'archive_footage',
'archive_sound', 'casting_director', 'category', 'cinematographer', 'composer',
'director', 'editor', 'producer', 'production_designer', 'self', 'writer' );

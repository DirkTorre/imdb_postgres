if [ -d "data" ]; then
  rm data/*
else
    mkdir data/
fi

files_to_download=(
    name.basics.tsv.gz
    title.basics.tsv.gz
    title.crew.tsv.gz
    title.principals.tsv.gz
    title.ratings.tsv.gz
)

for file in "${files_to_download[@]}"
do
    wget "https://datasets.imdbws.com/$file" -P data/
    gunzip data/$file
done

echo "CREATE DATABASE IF NOT EXISTS example_database;" | "${mysql[@]}"

cat ../generated/prefix.sql ../generated/example_database.sql | "${mysql[@]}"

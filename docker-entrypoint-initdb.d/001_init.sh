echo "CREATE DATABASE IF NOT EXISTS example_database;" | "${mysql[@]}"

cat ../schema/prefix.sql ../schema/2_schema.sql | "${mysql[@]}"

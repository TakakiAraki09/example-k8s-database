## getting started

[atlasgo](https://atlasgo.io/)

`$ curl -sSf https://atlasgo.sh | sh`

https://zenn.dev/katonium/articles/atlas-rakuraku-migration

## スキーマを取り込む

atlas schema inspect -u "mysql://root:password@127.0.0.1:3306" > ./schema/example_database.hcl

- `$ atlas schema inspect -u "mysql://root:password@127.0.0.1:3306/example_database" > ./schema/example_database.hcl`
- `$ atlas schema inspect -u "mysql://root:password@127.0.0.1:3306/example_database" --format '{{ sql . }}' > ./schema/2_schema.sql`
- `$ atlas schema apply -u "mysql://root:password@127.0.0.1:3306/example_database" --to file://schema/example_database.hcl`

## docker composeのイメージ削除

`$ docker-compose down --rmi all --volumes --remove-orphans`

## スキーマの適用

# example-k8s-database

## getting started

[atlasgo](https://atlasgo.io/)

https://atlasgo.io/atlas-schema/projects

`$ curl -sSf https://atlasgo.sh | sh`

https://zenn.dev/katonium/articles/atlas-rakuraku-migration

## スキーマを取り込む

- `$ atlas schema inspect --env local`
- `$ atlas schema inspect --env local --format '{{ sql . }}' > generated/example_database.sql`
- `$ atlas schema apply --env local`

## docker composeのイメージ削除

`$ docker-compose down --rmi all --volumes --remove-orphans`

## スキーマの適用

- [HCL - schema](https://atlasgo.io/atlas-schema/hcl)

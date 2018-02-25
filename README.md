# Rails On Docker
## Versions
- ruby: 2.4.1
- mysql: 5.6
- redis: latest

## Build
```
docker-compose up
docker-compose run --rm web bash -c "bundle exec rake db:create && bundle exec rake db:migrate"
```

## Add yarn package
```
docker-compose run --rm webpack yarn add [PACKAGE]
```

## Bundle install
```
docker-compose down
docker-compose up
# or
docker-compose restart
```

## Using `binding.pry`
```
docker-compose up -d && docker attach [WEB_CONTAINER_NAME]
```

## Show webpacker logs
```
docker-compose logs -f --tail=20 webpack
```

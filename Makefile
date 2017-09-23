.DEFAULT=start


start:
	docker-compose up

stop:
	docker-compose down

build:
	docker build --pull -t mars:5000/timw/redis-cli .


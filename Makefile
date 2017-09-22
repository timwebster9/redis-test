.DEFAULT=start


start:
	docker-compose up

stop:
	docker-compose down

incr:
	redis-cli -h mars < commands.txt

incr2:
	echo "MULTI\nGET buildno\nINCR buildno\nEXEC" | redis-cli --raw -h mars

incr3:
	result=$(echo "MULTI\nGET buildno\nINCR buildno\nEXEC" | redis-cli --raw -h mars)

incr4:
	command="printf \"MULTI\nGET buildno\nINCR buildno\nEXEC\" | redis-cli --raw -h mars"
	result=`eval $command`
	echo $result


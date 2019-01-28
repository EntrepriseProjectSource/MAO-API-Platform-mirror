install:
	docker exec -ti sf3_php bash -c 'composer install'
	docker exec -ti sf3_php bash -c 'rm -Rf var/cache'
	docker exec -ti sf3_php bash -c 'bin/console doc:mig:mig'
	docker exec -ti sf3_php bash -c 'bin/console doc:fix:load'
	docker exec -ti sf3_php bash -c 'chmod -R 777 var'
	docker exec -ti sf3_php bash -c 'mkdir -p web/files/csv'

update-project:
	docker exec -ti sf3_php bash -c 'composer update'

cr:
	docker exec -ti sf3_php bash -c 'chmod -R 777 var/'

cc:
	docker exec -ti sf3_php bash -c 'rm -rf  var/cache'

list:
	docker exec -ti sf3_php bash -c 'echo commands list'

tests:
	docker exec -ti sf3_php bash -c "vendor/bin/phpunit "
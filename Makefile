init: docker-down-clear docker-pull docker-build docker-up

up: docker-up

down: docker-down

restart: down up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

console-php:
	docker exec -it terit_php-fpm_1 bash

#console:
#	docker-compose exec --user www-data plstat_php bash

#test:
#	docker-compose exec php-cli vendor/bin/phpunit

#assets-install:
#	docker-compose exec node npm install
#
#assets-rebuild:
#	docker-compose exec node npm rebuild node-sass --force

#assets-dev:
#	docker-compose exec node npm run dev
#
#assets-watch:
#	docker-compose exec node npm run watch

# queue:
# 	docker-compose exec php-cli php artisan queue:work

# horizon:
# 	docker-compose exec php-cli php artisan horizon

# horizon-pause:
# 	docker-compose exec php-cli php artisan horizon:pause

# horizon-continue:
# 	docker-compose exec php-cli php artisan horizon:continue

# horizon-terminate:
# 	docker-compose exec php-cli php artisan horizon:terminate

# memory:
# 	sudo sysctl -w vm.max_map_count=262144

perm:
	sudo chgrp -R www-data ../storage ../bootstrap/cache ../app
	sudo chmod -R ug+rwx ../storage ../bootstrap/cache ../app

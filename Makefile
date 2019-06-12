initialize: docker-compose.yml
	@echo "This is an initialize operation for redash server."
	@echo "If you already build one, it will be REMOVED!"
	@echo "Do you want to conduct initialization? (yes, no):"

	@read answer; \
	if [[ "$$answer" = yes ]]; then \
		echo "Stating initialization."; \
		docker-compose run --rm server create_db; \
	elif [[ "$$answer" = no ]]; then \
		echo "no is input"; \
	else \
		echo "Cannot understand: $$answer"; \
	fi

	

start: docker-compose.yml
	docker-compose up -d > ./redash/log

stop: docker-compose.yml
	docker-compose stop
 

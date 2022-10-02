build:
	docker-compose build --build-arg http_proxy=%http_proxy% --build-arg https_proxy=%http_proxy%

up:
	docker-compose up -d

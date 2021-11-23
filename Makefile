.PHONY: deps.lock
deps.lock:
	pip freeze | sort > requirements.txt


.PHONY: deps.install
deps.install:
	pip install -r requirements.txt


.PHONY: server
server:
	python manage.py runserver


.PHONY: migrate
migrate:
	python manage.py makemigrations && python manage.py migrate
.PHONY: help dev dev-build prod prod-build stop clean logs

help: ## Показати цю допомогу
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

dev: ## Запустити в режимі розробки
	docker-compose -f docker-compose.dev.yml up

dev-build: ## Збудувати та запустити в режимі розробки
	docker-compose -f docker-compose.dev.yml up --build

prod: ## Запустити в production режимі
	docker-compose up

prod-build: ## Збудувати та запустити в production режимі
	docker-compose up --build

stop: ## Зупинити всі контейнери
	docker-compose down
	docker-compose -f docker-compose.dev.yml down

clean: ## Видалити всі контейнери та volumes
	docker-compose down -v
	docker-compose -f docker-compose.dev.yml down -v

logs: ## Показати логи всіх сервісів
	docker-compose logs -f

logs-frontend: ## Показати логи frontend
	docker-compose logs -f frontend

logs-backend: ## Показати логи backend
	docker-compose logs -f backend
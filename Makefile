export PROJECT_NAME = lambda-api-gateway-project
export COMPOSE_PROJECT_NAME = ${PROJECT_NAME}-infra

check-project:
ifndef PROJECT_NAME
	$(error PROJECT_NAME is required)
endif

make build:
	docker-compose build

init:
	docker-compose run --rm infra sh -c " \
		rm -rf .terraform && \
		terraform init \
	"

plan:
	docker-compose run --rm infra terraform plan

apply:
	docker-compose run --rm infra terraform apply

destroy: init
	docker-compose run --rm infra terraform destroy

fmt:
	docker-compose run --rm -w /code infra terraform fmt -diff -recursive

shell: check-project
	docker-compose run --rm infra sh

GREEN := \033[32m
RESET := \033[39m
ARROW := \033[1m\033[31m>$(GREEN)>\033[33m>$(RESET)


node_modules:
	@ echo -e "${ARROW} Install npm dependancies..."
	npm install


run: node_modules
	@ echo -e "${ARROW} Running project..."
	npm run dev

	@ echo -e "[${GREEN}OK${RESET}] Done"


.PHONY: run
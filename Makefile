PROJECT_PATH=./src

.venv:
	python3.8 -m venv .venv
	pip install --upgrade pip

install-dev: .venv
	pip install -r requirements.txt


lint:
	black --line-length=100 --target-version=py38 --check .
	flake8 --max-line-length=100 --ignore=E402,W503,E712 --exclude .venv,dependencies

format:
	black --line-length=100 --target-version=py38 .

test-integration:
	python -m unittest discover -p "itest*.py"

test:
	coverage run --source=$(PROJECT_PATH) --omit=dependencies -m unittest

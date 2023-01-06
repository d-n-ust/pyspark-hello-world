PYTHON3=/usr/bin/python3
VENV=.venv/
VENV_PYTHON=.venv/bin/python3

venv:
	$(PYTHON3) -m venv .venv
	$(VENV_PYTHON)pyspark -v -m pip install --upgrade pip

freeze:
	$(VENV_PYTHON) -m pip freeze > requirements.txt

deps:
	$(VENV)bin/python -m pip install -r requirements.txt

install: venv deps
PYTHON3=/usr/bin/python3
VENV=.venv/
VENV_PYTHON=.venv/bin/python3
VENV_SPARK_SUBMIT=.venv/bin/spark-submit

venv:
	( \
		$(PYTHON3) -m venv .venv; \
		$(VENV_PYTHON) -m pip install --upgrade pip; \
	)

freeze:
	$(VENV_PYTHON) -m pip freeze > requirements.txt

deps:
	$(VENV)bin/python -m pip install -r requirements.txt

install: venv deps

run:
	( \
		source $(VENV)/bin/activate; \
		$(VENV_SPARK_SUBMIT) src/main.py; \
	)
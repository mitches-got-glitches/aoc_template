.PHONY: submodule venv

all: submodule venv

submodule:
	git submodule init
	git submodule update

venv:
	python -m venv .venv
	. .venv/bin/activate && pip install ipykernel aoc_helpers/

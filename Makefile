dev:
	uvicorn app.main:app --reload --port 5050 --log-level debug

prod:
	uvicorn main:app --workers 4 --port 5050
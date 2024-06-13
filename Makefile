dev:
	uvicorn app.main:app --reload --host 0.0.0.0 --port 5050 --log-level debug

prod:
	uvicorn main:app --workers 4 --host 0.0.0.0 --port 5050
FROM python:3.10-slim
WORKDIR /app
COPY 1.py .
CMD ["python", "1.py"]

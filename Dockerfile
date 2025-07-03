FROM python:3.11-slim
WORKDIR /app
COPY . /app
EXPOSE 2002
CMD ["python3", "server.py"]

FROM python:3.10-alpine3.19

WORKDIR /app

COPY app.py .

# Run the script when container starts
CMD ["python", "app.py"]

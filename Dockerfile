FROM python:3.10-alpine3.19

WORKDIR /app

COPY app.py .

# Run the script when container starts
CMD ["python", "app.py"]
# Your existing Python stuff...

CMD ["sh", "-c", "python your_script.py && tail -f /dev/null"]

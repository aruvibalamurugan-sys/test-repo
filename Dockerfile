FROM python:3.10-alpine3.19

WORKDIR /app

# Copy your app
COPY app.py .

# Install bash + openssh for SSH (Alpine packages)
RUN apk add --no-cache \
    bash \
    openssh-server \
    && ssh-keygen -A \
    && mkdir -p /root/.ssh \
    && chmod 700 /root/.ssh

# Expose SSH port (add TCP 22 in Runpod template too)
EXPOSE 22

# Run app.py THEN keep alive forever (logs show output)
CMD ["sh", "-c", "python app.py && sleep infinity"]

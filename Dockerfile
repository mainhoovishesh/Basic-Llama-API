# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install curl
RUN apt-get update
RUN apt-get install -y curl

# Install ollama
RUN curl -L https://ollama.com/download/ollama-linux-amd64 -o /usr/bin/ollama
RUN chmod u+x /usr/bin/ollama

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=Controller.py
ENV OLLAMA_HOST=http://ollama:11434

# Run llama_api.py when the container launches
ENTRYPOINT ["./entrypoint.sh"]

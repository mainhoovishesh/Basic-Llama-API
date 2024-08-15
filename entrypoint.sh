#!/bin/bash

# Pull the llama3.1 model
ollama pull llama3.1

# Start the Flask app
flask run --host=0.0.0.0 --port=5000

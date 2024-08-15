# Basic-Llama-API

This is a straightforward RESTful API built with Flask to connect to and utilize the power of the LLaMA model using Python.

## Installation

One only needs to clone the repository and install the dependencies to get started.

### Local installation

1. install [ollama](https://ollama.com/download)
2. install other dependencies

```bash
pip install -r requirements.txt
```

### Via Docker Compose

```bash
docker-compose up
```

## Usage

Example usage via `curl`:

```bash
curl http://localhost:5000/generate -H 'Content-Type: application/json' -d '{"prompt":"Why is the sky blue?"}' | jq -r '.response'
```

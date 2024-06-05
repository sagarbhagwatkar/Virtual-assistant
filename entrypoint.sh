#!/bin/bash
set -e

# Start Ollama service in the background
ollama serve &

# Wait for Ollama service to start
while ! wget -q --spider http://localhost:11434; do
  sleep 0.1
done

# Pull the llama3 model
ollama pull llama3

# Keep the container running
tail -f /dev/null

#!/usr/bin/env bash

# docs.sh - Graceful script to serve the Claude Architecture diagram locally

PORT=8080

echo "✨ Starting local server for Claude Architecture Diagram..."
echo "🌐 Serving on http://localhost:$PORT/"
echo "Press Ctrl+C to stop the server."

# Give the server a moment to start before opening the browser
(sleep 1 && 
  if [[ "$OSTYPE" == "darwin"* ]]; then
    open "http://localhost:$PORT/"
  elif [[ "$OSTYPE" == "linux-gnu"* ]] && command -v xdg-open &>/dev/null; then
    xdg-open "http://localhost:$PORT/"
  elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    start "http://localhost:$PORT/"
  fi
) &

# Try to serve using available tools (Python 3, Python 2, or Node npx)
if command -v python3 &>/dev/null; then
  python3 -m http.server $PORT
elif command -v python &>/dev/null; then
  python -m SimpleHTTPServer $PORT
elif command -v npx &>/dev/null; then
  npx serve -l $PORT
else
  echo "❌ Error: Could not find Python or npx to serve the files."
  echo "You can still open index.html directly in your browser."
  exit 1
fi
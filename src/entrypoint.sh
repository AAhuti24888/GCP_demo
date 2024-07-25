#!/bin/bash

APP_PORT=${PORT:-8081}
cd /app/
gunicorn -k uvicorn.workers.UvicornWorker src.main:app --bind "0.0.0.0:"${APP_PORT}
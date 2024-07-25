FROM python:3.8.16-slim

COPY . /app/

WORKDIR /app/

# RUN apt-get update && \
#     apt-get install -y \
#     build-essential \
#     python3-dev \
#     python3-setuptools \
#     gcc \
#     make

RUN pip install -r /app/src/requirements.txt

RUN chmod +x ./src/entrypoint.sh
 

#CMD ["uvicorn","src.main:app","--port 8081","--reload"]
CMD ["./src/entrypoint.sh"]
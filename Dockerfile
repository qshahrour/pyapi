FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

# Install dependencies
RUN apt-get update
RUN apt-get -y install libmagic1

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY app.py /app/app.py

EXPOSE 5000

CMD ["python", "app.py"]

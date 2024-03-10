FROM python:3.8-slim-buster

RUN apt update -y
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

# Expose the port your application will run on
EXPOSE $PORT

CMD ["python3", "app.py"]
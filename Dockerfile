FROM python:3.11.9-slim-bookworm
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY ./src /app/
EXPOSE 80
ENTRYPOINT ["uvicorn","main:app","--reload","--host","0.0.0.0","--port","80"]

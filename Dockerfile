
FROM python:3.10

ENV PG_USER=postgres
ENV PG_PASSWORD=Ivankov12
ENV PG_DB=ads
ENV PG_HOST=db
ENV PG_PORT=5432

WORKDIR /app

COPY requirements.txt .
COPY app.py .
COPY models.py .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]

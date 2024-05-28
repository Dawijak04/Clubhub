
FROM python:3.9-slim
 
COPY . /appaws

COPY requirements.txt / appaws

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]

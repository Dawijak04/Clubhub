
FROM python:3.9-slim
 
COPY . /appaws

COPY app/requirements.txt /appaws/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]

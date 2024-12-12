FROM python:3.9-slim
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000

# Define environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
CMD ["flask", "run"]

FROM python:3.9

WORKDIR /myapp

COPY requirements.txt /myapp/requirements.txt

RUN pip install --no-cache-dir -r /myapp/requirements.txt

ENV PORT=8000

COPY app.py .

CMD ["python", "app.py"]
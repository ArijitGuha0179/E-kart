FROM python:3.10

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . code
WORKDIR /code

EXPOSE 8500

ENTRYPOINT ["python3", "manage.py"]
CMD ["runserver", "0.0.0.0:8500"]
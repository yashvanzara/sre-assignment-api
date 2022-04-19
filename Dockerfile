FROM python:3.8
COPY requirements.txt requirements.txt
COPY *.py .
RUN pip install -r requirements.txt
ENTRYPOINT [ "uvicorn" ]
CMD ["main:app", "--reload", "--port", "7777", "--host", "0.0.0.0"]
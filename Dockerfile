FROM continuumio/miniconda3

WORKDIR /app

ENV PORT 80

COPY src/requirements.txt ./

RUN pip install -r requirements.txt

COPY src /app

EXPOSE 8080

CMD [ "python", "main.py" ]

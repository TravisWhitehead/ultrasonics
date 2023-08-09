FROM python:3.11.4-alpine

COPY . /
WORKDIR /

VOLUME [ "/config", "/plugins" ]

RUN apk --no-cache add gcc g++ musl-dev cmake ninja
RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["app.py"]

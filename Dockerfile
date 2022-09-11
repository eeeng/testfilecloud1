FROM ubuntu:16.04
ENV port 80
ENV HOST 0.0.0.0

EXPOSE 80 #hoslanılmayan fiziksel durum, bilgi vermek için
RUN apt-get update -y && \
    apt-get install -y python3-pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python", "app.py" ]

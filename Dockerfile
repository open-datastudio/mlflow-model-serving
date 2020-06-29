FROM continuumio/miniconda3:4.8.2

RUN wget https://github.com/tsl0922/ttyd/releases/download/1.6.0/ttyd_linux.x86_64 && \
    mv ttyd_linux.x86_64 /usr/bin/ttyd && chmod +x /usr/bin/ttyd

ADD requirements.txt ./
RUN pip --no-cache-dir install -r requirements.txt

RUN groupadd --gid 2000 mlflow \
    && useradd -ms /bin/bash -d /home/mlflow mlflow --uid 2000 --gid 2000
USER 2000

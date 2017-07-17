FROM 172.16.1.41:5000/tdc/crontab-ui:latest

ADD get-pip.py /opt/get-pip.py

RUN apk --no-cache add python && \
    python /opt/get-pip.py && \
    pip install -U elasticsearch-curator==4.2.0

ADD conf /opt/curator/conf

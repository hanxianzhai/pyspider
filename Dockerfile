FROM binux/pyspider
MAINTAINER binux <roy@binux.me>

RUN curl -sLo /usr/local/lib/python2.7/site-packages/tornado/cacert.pem https://curl.haxx.se/ca/cacert.pem \
    && rm -rf /opt/pyspider/pyspider/webui/static/debug.min.css
COPY debug.min.css /opt/pyspider/pyspider/webui/static/debug.min.css



#VOLUME ["/opt/pyspider"]
ENTRYPOINT ["pyspider"]

EXPOSE 5000 23333 24444 25555 22222

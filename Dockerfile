FROM python:3-alpine

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pylint && \
    rm -rf /root/.cache

WORKDIR /opt/src/
RUN adduser -D maz
USER maz

COPY assets/pylint.rcfile /opt/pylint.rcfile

ENTRYPOINT [ "pylint", "--rcfile=/opt/pylint.rcfile" ]
CMD [ "--version" ]

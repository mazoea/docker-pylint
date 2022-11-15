FROM python:3-alpine

WORKDIR /opt/src/

COPY assets/pylint.rcfile /opt/pylint.rcfile
RUN pip install --no-cache-dir -U pylint

ENTRYPOINT [ "pylint", "--rcfile=/opt/pylint.rcfile" ]
CMD [ "--version" ]

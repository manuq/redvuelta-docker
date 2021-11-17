FROM python:3.10.0-alpine3.14

# This file is from the torrent, see http://cdpedia.python.org.ar/
# After downloading, decompress it running:
# $ xz --decompress --verbose cdpedia-es-0.9.0-20210416-tarmed.tar.xz
ADD ./cdpedia-es-0.9.0-20210416-tarmed.tar /app

WORKDIR /app/cdpedia-es-0.9.0-20210416-tarmed
CMD ["./cdpedia.py", "--port=8000", "--host=0.0.0.0", "--daemon"]

FROM python:alpine
WORKDIR /app
COPY . /app
EXPOSE 8888
CMD ["python","-m","http.server","8888","--cgi"]
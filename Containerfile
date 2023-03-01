FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN minx0 create-db
RUN minx0 populate-db
RUN minx0 add-user -u admin -p admin
EXPOSE 5000
CMD ["minx0", "run"]

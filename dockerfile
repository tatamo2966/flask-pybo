FROM python:3.11.6
COPY . /app
WORKDIR /app
ENV FLASK_APP=pybo
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install flask
RUN pip install -r requirement.txt
ENTRYPOINT [ "python3","-m","flask","run" ]
CMD ["--host=0.0.0.0"]

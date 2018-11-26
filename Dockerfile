FROM python:3.5-stretch

COPY . /code/
WORKDIR code

RUN python setup.py develop
RUN pip install -r requirements.txt

CMD ./bin/jam server

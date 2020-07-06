FROM python:3.7.3-stretch

#working directory
WORKDIR /app

#copy sourcecode to working directory
COPY . app.py /app/

#install packages from requirements.txt
#hadolint ignore
RUN pip install pip==20.1.1 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
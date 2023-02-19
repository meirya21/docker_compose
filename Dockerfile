# Pulling the base image for the container
FROM python:3.9-alpine3.15

# Creat and enter to this folder:
WORKDIR /app

# copy the reqiurements file to the container
COPY ./requirements.txt .
# Upgrade PIP Package to Latest Version
RUN pip install --upgrade pip
# installing the python packages for the app
RUN pip install -r requirements.txt
# Copying the app folder to the container
COPY ./app .
# Running the app
ENTRYPOINT ["python3", "run.py"]
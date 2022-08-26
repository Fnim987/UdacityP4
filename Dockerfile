FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/

## Step 3:
# hadolint ignore=DL3013,DL3042
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
EXPOSE 8080

## Step 5:
CMD ["python3","app.py"]


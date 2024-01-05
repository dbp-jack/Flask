# syntax=docker/dockerfile:1 #이미지 만든건 실행 팀에서 만든

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
#실행 명령어도 넣어주네.

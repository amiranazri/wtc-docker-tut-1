FROM python:3
RUN apt-get update -y && apt-get upgrade -y
RUN git config --global url."https://3d98056d88d0e4cabf58107de4bec6cced58f771:@github.com".insteadOf "https://github.com"
RUN git clone https://github.com/yuviiir/matcha.git /usr/src/matcha
WORKDIR /usr/src/matcha
COPY ./requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python", "matcha.py"]
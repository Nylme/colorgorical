FROM python:2
EXPOSE 8888

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN sh setup.sh

CMD [ "python", "run.py", "--server" ]


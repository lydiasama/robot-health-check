FROM alpine

RUN apk add --no-cache bash py-pip xvfb dbus chromium chromium-chromedriver
RUN pip install --upgrade pip
RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary
RUN pip install --upgrade urllib3

COPY . /rotbotframework
WORKDIR /rotbotframework
RUN chmod +x run.sh

CMD ["/rotbotframework/run.sh"]
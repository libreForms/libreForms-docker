FROM python:3.8
# RUN mkdir /libreForms/
# COPY . /libreForms/
RUN git clone https://github.com/libreForms/libreForms-flask.git
WORKDIR /libreForms/
RUN cp etc/config_overrides.py.example app/config_overrides.py
EXPOSE 8000
RUN pip install -r requirements/app.txt

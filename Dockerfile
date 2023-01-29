FROM python:3.8
# RUN mkdir /libreForms/
# COPY . /libreForms/
RUN git clone https://github.com/libreForms/libreForms-flask.git
# RUN mv libreForms-flask/ libreForms/
WORKDIR /libreForms-flask/
RUN cp etc/config_overrides.py.example app/config_overrides.py
EXPOSE 8000
RUN pip install -r requirements/app.txt

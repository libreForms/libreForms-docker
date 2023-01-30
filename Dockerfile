FROM python:3.8
# RUN mkdir /libreForms/
# COPY . /libreForms/
RUN git clone --depth 1 https://github.com/libreForms/libreForms-flask.git 
# RUN mv libreForms-flask/ libreForms/
WORKDIR /libreForms-flask/
RUN cp etc/example-config_overrides.py app/config_overrides.py
EXPOSE 8000
RUN pip install -r requirements/app.txt

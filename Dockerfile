FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/neozilot/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=)u^slmj*#-97%vbo=j#y=il47j^#_$b^^m0r4a0*b-65qnth7(" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
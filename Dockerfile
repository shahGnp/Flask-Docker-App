FROM python:3.9.2 
# this is a python image 

WORKDIR /python-app
# work folder to store

COPY . .
# copy <all_files> <dir /python-app> copy codebase

RUN pip3 install -r requirements.txt
# install all the dependencies in requirements.txt

EXPOSE 5000
# networking layer

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
# run flask
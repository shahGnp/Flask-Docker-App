# Python layer
FROM python:3.9.2

# Set the working directory in the container
WORKDIR /python-app

# Copy the current directory contents
COPY . .

# Requirement layer
RUN pip3 install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the Flask application
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
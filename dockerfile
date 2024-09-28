# Use an official Python base image as a starting point
FROM python:3.6.12
COPY . /usr/ML

# Set the working directory in the container
WORKDIR /usr/ML/app

# Copy the requirements.txt file to the working directory

# Install the required dependencies
RUN pip install -r requirements.txt

# Copy the rest of your application code to the working directory

# Expose a port if your application requires it (e.g., Flask app using port 5000)
EXPOSE 8080

# Command to run your application (change as per your app's entry point)
CMD ["python", "app.py"]
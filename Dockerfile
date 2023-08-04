# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script to the container
COPY script.py ./

# Install the required Python packages
RUN pip install cloudscraper==1.2.58 beautifulsoup4==4.11.1

# Run the Python script when the container starts
CMD ["python", "script.py"]

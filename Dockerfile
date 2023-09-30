# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

COPY . /app/
RUN pip install -r requirements.txt

# Expose port 4050
EXPOSE 4050

# Run the Flask app
CMD ["python", "app.py"]

# Use the official Python image from the Docker Hub
FROM cimg/python:3.10.1

# Set the working directory
WORKDIR /circleci-demo-python-django

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port that the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "manage.py"]

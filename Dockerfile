# Step 1: Use an official Python runtime as a base image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Make port 5000 available to the world outside this container
EXPOSE 5000

# Step 6: Define environment variables to make Flask run in production mode
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Step 7: Run the application
CMD ["flask", "run"]

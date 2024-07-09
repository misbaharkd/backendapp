# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Create a non-root user with a specific UID
RUN addgroup --gid 1000 mygroup && \
    adduser --disabled-password --gecos '' --uid 1000 --gid 1000 myuser

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Change ownership of /app directory to non-root user
RUN chown -R myuser:mygroup /app

# Switch to the non-root user
USER myuser

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]



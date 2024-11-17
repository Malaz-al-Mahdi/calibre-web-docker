FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application files
COPY ./calibre-web /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose ports (8080 is the internal port for each instance)
EXPOSE 8080

# Default command to run the app
CMD ["python3", "cps.py"]


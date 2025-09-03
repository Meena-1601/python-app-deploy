# Use official Python image
FROM python:3.9-slim

# Set workdir
WORKDIR /app

# Copy requirements
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy app files
COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]

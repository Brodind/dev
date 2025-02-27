# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Set environment variables for Django settings
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE=packtracSite.settings  # Adjust if necessary

# Expose the port Django will run on
EXPOSE 8000

# Install Gunicorn for production server
RUN pip install gunicorn

# Set the command to run the app with Gunicorn in production
CMD ["gunicorn", "packtracSite.wsgi:application", "--bind", "0.0.0.0:8000"]

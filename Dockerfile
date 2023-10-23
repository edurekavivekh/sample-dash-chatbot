# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application's source code to the container
COPY . /app

# Expose the port your application will run on (Dash typically uses 8050, Streamlit typically uses 8501)
EXPOSE 8050

# Define the command to run your application
CMD ["python", "app.py"]

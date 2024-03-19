# Use Python 3.10 with Ubuntu as the base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Copy the jupyter notebook
COPY notebook.ipynb .

# Copy CSV data to the container 
COPY ./data/oasis_longitudinal_demographics.csv /app/data/

# Install necessary packages
RUN apt-get update && apt-get install -y \
    bash \
    git \
    openssh-client \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r requirements.txt
# Gunakan base image Python
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy dependencies file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Tentukan perintah untuk menjalankan aplikasi
CMD ["python", "app.py"]

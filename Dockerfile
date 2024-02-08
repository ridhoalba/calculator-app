# Gunakan base image yang sesuai
FROM python:3.9

# Set working directory di dalam container
CMD ["mkdir", "/app"]
WORKDIR /app

# Salin file requirements.txt ke dalam container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port yang digunakan oleh aplikasi
EXPOSE 5000

# Perintah default yang dijalankan saat container dijalankan
CMD ["python", "app.py"]

# Gunakan base image yang sesuai
FROM python:3.9

# Set working directory di dalam container
RUN mkdir /app
WORKDIR /app

# Salin file requirements.txt ke dalam container
COPY . /app
RUN apt update
# Install dependencies
RUN pip install -r requirements.txt

# Expose port yang digunakan oleh aplikasi
EXPOSE 80

# Perintah default yang dijalankan saat container dijalankan
RUN nohup python3 app.py &

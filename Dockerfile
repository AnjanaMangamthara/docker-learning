# 1. Base image
FROM python:3.9-slim

# 2. Working directory inside container
WORKDIR /app

# 3. Copy files to the container
COPY . .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose port
EXPOSE 5000

# 6. Start the application
CMD ["python", "app.py"]

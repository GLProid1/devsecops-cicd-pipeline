FROM python:3.10-slim

WORKDIR /app

# Menjalankan container dengan non-root user demi keamanan runtime
RUN useradd -m appuser

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chown -R appuser:appuser /app

USER appuser
EXPOSE 5000
CMD ["python", "app.py"]
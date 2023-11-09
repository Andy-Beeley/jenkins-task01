FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
# Set YOUR_NAME environment variable
ENV YOUR_NAME=Andy
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]

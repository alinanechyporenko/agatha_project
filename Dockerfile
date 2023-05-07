FROM tensorflow/tensorflow

# Create app directory
COPY . /app
WORKDIR /app

# Install app dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0
RUN pip install opencv-python

ENTRYPOINT [ "python", "./app/agata.py" ]
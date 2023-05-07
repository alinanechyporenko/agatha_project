FROM tensorflow/tensorflow

# Create app directory
COPY . /app
WORKDIR /app

# Install app dependencies
RUN sudo pip install --no-cache-dir -r requirements.txt
RUN sudo apt-get update
RUN sudo apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0
RUN sudo pip install opencv-python

ENTRYPOINT [ "python", "./app/agata.py" ]
FROM ros:humble

# Create a directory inside the container to copy the folder to
RUN mkdir /app

# Copy the folder from the host machine to the container
COPY orion_ws /app/orion_ws/

# Basic tools
RUN apt-get update && \
    apt-get install vim nano git tmux wget curl python-pip net-tools iputils-ping  -y

# RUN apt-get install apt-utils
# RUN apt-get install usbutils -y

# Install additional ros packages
# RUN apt-get update && apt-get install ros-humble-joy -y
# RUN pip install adafruit-pca9685

# RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
# RUN apt-get update && \
#     apt-get install nodejs -y
# RUN npm install http-server -g


# Set the working directory to the location where the folder is copied
WORKDIR /app/orion_ws

# Add any additional commands or configurations you need for your application

# Specify the command to run when the container starts
CMD ["bash"]

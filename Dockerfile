FROM python:3.7
RUN pip install torch==1.5.1+cpu -f https://download.pytorch.org/whl/torch_stable.html

# Create a non-root user and switch to it
RUN adduser --disabled-password --gecos "" --shell /bin/bash user
USER user

# All users can use /home/user as their home directory
ENV HOME=/home/user
RUN chmod 777 /home/user
FROM python:3.8

# ENV DEBIAN_FRONTEND noninteractive.
# ENV TOKEN=""
# ENV HOST="db"
# ENV PORT="5953"
# ENV USER="root"
# ENV PASSWORD="9F9iyZs3TPZJ"
# ENV admin_id="1437775058"
# WORKDIR /home
COPY ./ /home
COPY ./requirements.txt /home/requirements.txt

RUN python -m pip install --upgrade pip
RUN pip3 install -r /home/requirements.txt

ENTRYPOINT python3 /home/main.py

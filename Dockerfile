FROM python:3.8.12-bullseye
# If you are deploying this container yourself,
# include your own label. Example below.
#LABEL James Kunstle <jkunstle@redhat.com>
EXPOSE 8050
WORKDIR /srv
COPY requirements.txt /srv
RUN pip3 install -r requirements.txt
COPY . /srv
CMD python3 index.py

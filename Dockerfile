FROM python:3.6

WORKDIR /app/
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
RUN python tchome/manage.py collectstatic --no-input
ENTRYPOINT ["./entrypoints/webapp.sh"]
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

run ls
COPY requirements.txt ./
RUN python -m pip install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . ./code/

WORKDIR ./code
CMD ["python", "manage.py","runserver","0.0.0.0:8000"]
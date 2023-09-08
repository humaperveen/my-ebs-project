FROM python:3.10.9
COPY . /my-project
WORKDIR /my-project
RUN pip install -r requirements.txt
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["s8.py"]
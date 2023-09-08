FROM python:3.10.9
COPY . /my-project
WORKDIR /my-project
RUN pip install -r requirements.txt
EXPOSE 8501
# ENTRYPOINT ["streamlit","run"]
# CMD ["s8.py"]
# CMD streamlit run --server.port 8501 s8.py
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "s8.py", "--server.port=8501", "--server.address=0.0.0.0"]
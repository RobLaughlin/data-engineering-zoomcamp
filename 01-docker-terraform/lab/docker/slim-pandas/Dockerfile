FROM python:3.13.11-slim

RUN pip install pandas pyarrow

WORKDIR /app

COPY app/pipeline.py pipeline.py

COPY app/entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
RUN mkdir outputs

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["10"]


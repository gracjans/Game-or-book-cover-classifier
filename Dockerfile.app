FROM python:3.9-slim-buster

WORKDIR /app/

COPY requirements.txt requirements.txt
COPY setup.py setup.py
RUN python -m pip install --upgrade pip && \
    python -m pip install -r requirements.txt && \
    python -m pip install -e .

COPY src/gradio_app.py src/gradio_app.py
COPY examples/ examples/

EXPOSE 8080

ENTRYPOINT ["python", "src/gradio_app.py"]
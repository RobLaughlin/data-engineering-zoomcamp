FROM python:3.13.11-slim

# Copy uv binary from official uv image (multi-stage build pattern)
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/
ENV PATH="/app/.venv/bin:$PATH"

WORKDIR /app



# Init and add deps
RUN uv init --python=3.13.11
RUN uv add pandas pyarrow

COPY app/pipeline.py pipeline.py

COPY app/entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

# Make outputs directory
RUN mkdir outputs

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["10"]


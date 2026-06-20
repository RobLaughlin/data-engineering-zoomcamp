FROM python:3.13.11-slim

# Copy uv binary from official uv image (multi-stage build pattern)
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/

WORKDIR /app

# Add virtual environment to PATH so we can use installed packages
ENV PATH="/app/.venv/bin:$PATH"

# Copy dependency files first (better layer caching)
COPY "pyproject.toml" "uv.lock" ".python-version" ./
# Install dependencies from lock file (ensures reproducible builds)
RUN uv sync --locked

COPY docker/slim-pandas/app/pipeline.py pipeline.py

COPY docker/slim-pandas/app/entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

# Make outputs directory
RUN mkdir outputs

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["10"]


docker run \
    -it \
    --rm \
    --entrypoint=bash \
    -v $(pwd)/docker/test:/app/test \
    python:3.9.16-slim \
    -c "echo '--Python Version--'; python -V; bash"

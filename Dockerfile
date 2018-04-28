FROM jadi:latest

# Copy code
COPY [ ".", "/srv/" ]

RUN cd /srv/ && \
    composer install --no-dev

ENTRYPOINT [ "/srv/entrypoint" ]
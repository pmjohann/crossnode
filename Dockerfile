FROM alpine:3.10

# COPY COMPILER HELPER SCRIPT
COPY docker-entrypoint.sh /docker-entrypoint.sh

# MAKE HELPER EXECUTABLE, INSTALL NODE, NPM AND NEXE
RUN chmod +x /docker-entrypoint.sh && \
    apk add nodejs npm && \
    npm i -g nexe

# SET DEFAULT VALUES FOR BUILDING
ENV ENTRYPOINT index.js
ENV NODE_VERSION 12.13.0

# SET BUILD DIR AS WORKDIR
WORKDIR /build

# SET HELPER SCRIPT AS ENTRYPOINT
ENTRYPOINT ["/docker-entrypoint.sh"]

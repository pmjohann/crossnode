FROM alpine:3.13.2

# COPY COMPILER HELPER SCRIPT
COPY docker-entrypoint.sh /docker-entrypoint.sh

# SET DEFAULT VALUES FOR BUILDING
ENV ENTRYPOINT=index.js
ENV NODE_VERSION=12.16.2
ENV NPM_VERSION=7.6.3
ENV NEXE_VERSION=v3.3.7

# MAKE HELPER EXECUTABLE, INSTALL NODE, NPM AND NEXE
RUN chmod +x /docker-entrypoint.sh && \
    apk add --no-cache npm && \
    npm i -g npm@$NPM_VERSION && \
    npm i -g nexe@$NEXE_VERSION

# SET BUILD DIR AS WORKDIR
WORKDIR /build

# SET HELPER SCRIPT AS ENTRYPOINT
ENTRYPOINT ["/docker-entrypoint.sh"]

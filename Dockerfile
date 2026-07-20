FROM alpine:3.18

# Install bash (optional, but nice)
RUN apk add --no-cache bash

# Copy entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make it executable
RUN chmod +x /entrypoint.sh

# Set default entrypoint
ENTRYPOINT ["/entrypoint.sh"]

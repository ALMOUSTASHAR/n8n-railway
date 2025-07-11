#!/bin/sh
# Fix permissions on the mounted volume every time the container starts
chown -R node:node /home/node/.n8n

# Now, execute the original n8n start command as the 'node' user
exec su-exec node tini -- /usr/local/bin/n8n

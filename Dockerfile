# Start from the official n8n image
FROM n8nio/n8n:latest

# Switch to the root user temporarily to run a command that needs high privileges
USER root

# Change the owner of the directory to the "node" user
RUN chown -R node:node /home/node/.n8n

# Switch back to the default and secure "node" user to run the application
USER node

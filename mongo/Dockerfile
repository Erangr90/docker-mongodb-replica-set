FROM mongo:7.0.0

# Set the working directory
WORKDIR /scripts

# Copy the init script into the container
COPY users-init.sh .

# Make the script executable
RUN chmod +x users-init.sh

# Start MongoDB and run the initialization script
CMD ["bash", "-c", "mongod --replSet dbrs --keyFile /data/keyfile.key --bind_ip_all & ./users-init.sh"]
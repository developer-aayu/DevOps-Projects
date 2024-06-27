#!/bin/bash

# Configuration
REGION="us-east-1a"  # AWS region
INSTANCE_ID="i-0a197b2e9394d8c21"  # EC2 Instance ID

# Function to start the instance
start_instance() {
  echo "Starting instance: $INSTANCE_ID"
  aws ec2 start-instances --instance-ids $INSTANCE_ID --region $REGION
  if [ $? -eq 0 ]; then
    echo "Instance started successfully."
  else
    echo "Failed to start instance."
  fi
}

# Function to stop the instance
stop_instance() {
  echo "Stopping instance: $INSTANCE_ID"
  aws ec2 stop-instances --instance-ids $INSTANCE_ID --region $REGION
  if [ $? -eq 0 ]; then
    echo "Instance stopped successfully."
  else
    echo "Failed to stop instance."
  fi
}

# Function to check the status of the instance
check_status() {
  echo "Checking status of instance: $INSTANCE_ID"
  STATUS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --region $REGION --query "Reservations[*].Instances[*].State.Name" --output text)
  echo "Instance status: $STATUS"
}

# Function to display usage instructions
usage() {
  echo "Usage: $0 {start|stop|status}"
  exit 1
}

# Main script logic
case "$1" in
  start)
    start_instance
    ;;
  stop)
    stop_instance
    ;;
  status)
    check_status
    ;;
  *)
    usage
    ;;
esac


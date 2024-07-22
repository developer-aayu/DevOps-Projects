# Terraform Project

## Overview
This repository contains Terraform configurations for provisioning and managing our infrastructure. Please note that the Terraform state files are not included in this repository for security and best practice reasons.

## State Files and Security
Terraform state files (`terraform.tfstate` and `terraform.tfstate.backup`) contain sensitive information about the infrastructure and the resources being managed. To prevent accidental exposure of this information, state files are excluded from version control using `.gitignore`.

### .gitignore
Our `.gitignore` file includes the following entries to ensure state files are not committed:


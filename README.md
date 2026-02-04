# TASK-3: Run Strapi on EC2 using Terraform

## Overview
In this task, an EC2 instance was provisioned using Terraform and Strapi was installed and run on the EC2 instance. The Strapi admin panel was accessed via the public IP.

## Tech Stack
- AWS EC2
- Terraform
- Ubuntu 24.04
- Node.js 20
- yarn
- Strapi

## Steps Performed

### 1. EC2 Provisioning using Terraform
- Installed Terraform
- Created EC2 instance
- Allowed ports 22 and 1337 in Security Group

### 2. Connect to EC2
<!-- ```bash -->
ssh -i <key.pem> ubuntu@<EC2-PUBLIC-IP>


# 3. Install Node.js & npm

- sudo apt update
- sudo apt install nodejs npm -y

# 4. Install Strapi

- yarn create strapi
- change the host name in .env file
# 5. Run Strapi

yarn develop
# 6. Access Admin Panel

http://<EC2-PUBLIC-IP>:1337/admin

### Result :- 

Strapi was successfully running on the EC2 instance and the admin panel was accessible via browser.<img width="1776" height="1004" alt="Image" src="https://github.com/user-attachments/assets/505e75c9-1cb7-4664-99e5-40f9e9a9e5f0" />
# Loom Video
https://www.loom.com/share/94e03005ac204f4b8fef22ac64feaeb8

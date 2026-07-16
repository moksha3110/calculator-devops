# 🚀 AWS DevOps CI/CD Pipeline for a Containerized Flask Calculator

A production-style DevOps project that demonstrates the complete CI/CD lifecycle using **Docker**, **Terraform**, **Amazon ECS Fargate**, **Amazon ECR**, and **GitHub Actions**.

Every push to the `main` branch automatically builds a Docker image, pushes it to Amazon ECR, and deploys the latest version to Amazon ECS.

---

# 📌 Project Overview

This project automates the deployment of a Flask Calculator application using modern DevOps practices.

The infrastructure is provisioned using **Terraform**, the application is containerized using **Docker**, deployed on **Amazon ECS Fargate**, and continuously deployed through **GitHub Actions**.

---

# 🏗 Architecture

```
                     Developer
                         │
                    git push
                         │
                         ▼
                  GitHub Repository
                         │
                         ▼
                 GitHub Actions CI/CD
                         │
          ┌──────────────┼──────────────┐
          ▼              ▼              ▼
      Build Image    Login to AWS   Push to ECR
                         │
                         ▼
                Amazon ECR Repository
                         │
                         ▼
               Amazon ECS Fargate Service
                         │
                         ▼
           Application Load Balancer (ALB)
                         │
                         ▼
                Flask Calculator Application
```

---

# 📸 Project Screenshots


## 🔹 Calculator Application

<p align="center">
<img width="1184" height="1554" alt="image" src="https://github.com/user-attachments/assets/3f3b859a-3d3f-4810-9af2-4071f5f774ce" />

</p>

---

## 🔹 GitHub Actions Pipeline

<p align="center">
<img width="2048" height="1176" alt="image" src="https://github.com/user-attachments/assets/abfcdb70-7fdc-4e61-bbc2-89f3804c34c7" />

</p>

---

## 🔹 Amazon ECS Service

<p align="center">
<img width="2300" height="458" alt="image" src="https://github.com/user-attachments/assets/2d0a8edb-c320-4d3e-adcd-b4d0ed1e0d53" />

</p>

---

## 🔹 Amazon ECR Repository

<p align="center">
<img width="2226" height="1246" alt="image" src="https://github.com/user-attachments/assets/4d0d8336-2a79-47ed-b24d-83a05098b5bf" />

</p>

---


## 🔹 Application Load Balancer

<p align="center">
<img width="2302" height="796" alt="image" src="https://github.com/user-attachments/assets/80d4818d-1754-412b-8011-ef802dbf3bf8" />

</p>

---

# ☁ AWS Services Used

- Amazon ECS Fargate
- Amazon Elastic Container Registry (ECR)
- Application Load Balancer (ALB)
- Amazon VPC
- Internet Gateway
- Public Subnets
- Route Tables
- Security Groups
- IAM
- CloudWatch Logs

---

# 🛠 Tech Stack

- Python
- Flask
- Docker
- Terraform
- GitHub Actions
- Amazon ECS
- Amazon ECR
- AWS IAM
- CloudWatch
- Git

---

# 📂 Project Structure

```
calculator-devops/

│── .github/
│     └── workflows/
│           └── deploy.yml

│── static/
│     └── style.css

│── templates/
│     └── index.html

│── terraform/
│     ├── provider.tf
│     ├── variables.tf
│     ├── vpc.tf
│     ├── security_groups.tf
│     ├── iam.tf
│     ├── ecs.tf
│     ├── alb.tf
│     ├── cloudwatch.tf
│     ├── outputs.tf
│     └── terraform.tfvars

│── app.py
│── requirements.txt
│── Dockerfile
│── .dockerignore
│── README.md
```

---

# 🚀 CI/CD Workflow

Every push to the **main** branch automatically performs:

- Checkout Repository
- Configure AWS Credentials
- Login to Amazon ECR
- Build Docker Image
- Push Docker Image to Amazon ECR
- Trigger ECS Deployment
- Wait for ECS Service to Become Stable

---

# ⚙ Infrastructure Provisioned

Terraform provisions:

- VPC
- Internet Gateway
- Public Subnets
- Route Tables
- Security Groups
- IAM Roles
- CloudWatch Log Group
- ECS Cluster
- ECS Task Definition
- ECS Service
- Application Load Balancer
- Target Group
- Listener

---

# 🐳 Docker

## Build

```bash
docker build -t calculator-app .
```

## Run

```bash
docker run -p 5000:5000 calculator-app
```

---

# 🌍 Deploy Infrastructure

```bash
cd terraform

terraform init

terraform plan

terraform apply
```

---

# 🔄 GitHub Actions

Deploy automatically by pushing code:

```bash
git add .

git commit -m "Updated Application"

git push origin main
```

GitHub Actions automatically:

- Builds Docker Image
- Pushes Image to Amazon ECR
- Deploys to Amazon ECS
- Waits for Successful Deployment

---

# 📈 Skills Demonstrated

- Infrastructure as Code
- Terraform
- Docker
- CI/CD Pipelines
- GitHub Actions
- Amazon ECS Fargate
- Amazon ECR
- Cloud Networking
- IAM
- CloudWatch
- AWS Load Balancer
- DevOps Automation

---

# 📚 Learning Outcomes

- Infrastructure provisioning using Terraform
- Docker containerization
- Continuous Integration
- Continuous Deployment
- AWS ECS deployment
- Cloud networking
- Infrastructure automation

---

# 🚀 Future Improvements

- Immutable Docker Image Tags
- ECS Task Definition Revision Automation
- HTTPS with ACM
- Route53 Domain
- Remote Terraform State
- Blue-Green Deployment
- Trivy Security Scanning
- Unit Tests
- CloudWatch Dashboards

---

# 👨‍💻 Author

**Rudraraju Surya Moksha**

GitHub: https://github.com/moksha3110

LinkedIn: *(Add your LinkedIn URL)*

---

⭐ If you found this project useful, consider giving it a star!

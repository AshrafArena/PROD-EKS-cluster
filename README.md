# Production-Grade EKS Cluster Deployment 🚀

## Project Overview
This project focuses on deploying a **production-grade Kubernetes cluster** on AWS using **Amazon EKS** for large distributed applications. The deployment leverages modern tools and best practices, including **Terraform** for Infrastructure as Code (IaC), **Helm** for package management, and various Kubernetes add-ons to ensure security, scalability, and ease of management.

## Key Features
1. **Infrastructure as Code**
   - EKS cluster and cloud infrastructure provisioned using **Terraform**.
   - Configured for production workloads with managed node groups and networking components.

2. **Security and Compliance**
   - **Checkov** used for static analysis and security compliance of Terraform code.
   - Adherence to best practices for infrastructure security and reliability.

3. **Ingress and HTTPS Support**
   - **NGINX Ingress Controller** deployed via Helm to manage incoming traffic.
   - **cert-manager** used to automate certificate management and ensure secure HTTPS communication.

4. **DNS Automation**
   - **External-DNS** integrates with Route53 to automate DNS record updates.

5. **Deployment Automation**
   - **ArgoCD** is configured to enable declarative GitOps workflows for application deployment.
   - Ensures continuous delivery and synchronization of Kubernetes manifests.

## Tools and Technologies Used
| Tool/Technology   | Purpose                                |
|-------------------|----------------------------------------|
| **AWS EKS**       | Managed Kubernetes cluster            |
| **Terraform**     | Infrastructure as Code                |
| **Checkov**       | Security compliance for Terraform     |
| **Helm**          | Kubernetes package management         |
| **NGINX Ingress** | Traffic routing and ingress management |
| **cert-manager**  | Automatic TLS certificate management  |
| **External-DNS**  | DNS management with Route53           |
| **ArgoCD**        | Declarative GitOps deployment         |

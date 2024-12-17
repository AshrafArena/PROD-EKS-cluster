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

| Tool/Tech         |  Reason                                |                                 |
|-------------------|----------------------------------------|------------------------------------|
| **AWS EKS**       | Managed Kubernetes cluster            | ![EKS](https://img.icons8.com/color/48/000000/amazon-web-services.png) |
| **Terraform**     | Infrastructure as Code                | ![Terraform](https://img.icons8.com/color/48/000000/terraform.png) |
| **Checkov**       | Security compliance for Terraform     | ![Checkov](https://img.icons8.com/color/48/000000/security.png) |
| **Helm**          | Kubernetes package management         | ![Helm](https://img.icons8.com/color/48/000000/kubernetes.png) |
| **NGINX Ingress** | Traffic routing and ingress management | ![NGINX](https://img.icons8.com/color/48/000000/nginx.png) |
| **cert-manager**  | Automatic TLS certificate management  | ![Cert-manager](https://img.icons8.com/color/48/000000/certificate.png) |
| **External-DNS**  | DNS management with Route53           | ![External-DNS](https://img.icons8.com/color/48/000000/domain.png) |
| **ArgoCD**        | Declarative GitOps deployment         | ![ArgoCD](https://img.icons8.com/color/48/000000/flow-chart.png) |

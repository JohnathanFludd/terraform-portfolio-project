# Portfolio Website Deployment

## Project Overview

As part of my cloud engineering training, I deployed a modern, responsive single-page portfolio website built with Next.js. This project is designed to showcase my ability to manage infrastructure using Infrastructure as Code (IaC) principles with Terraform on AWS.

### Project Description

The website is designed to be highly available, scalable, cost-effective, and fast-loading, ensuring an optimal user experience globally. The core components include:

* **Highly Available**: The site is globally accessible with minimal downtime.
* **Scalable**: It can handle increasing traffic without performance degradation.
* **Cost-Effective**: Resources are optimized to reduce unnecessary expenses.
* **Fast Loading**: Configured for quick load times using a global content delivery network.

### Key Features

* **Next.js Frontend**: Utilized Next.js for its server-side rendering, static site generation, and simplified routing.
* **Infrastructure as Code**: Managed the deployment using Terraform, ensuring consistent, version-controlled infrastructure.
* **Global Content Delivery**: Configured AWS CloudFront for low-latency, secure content delivery.
* **Secure Storage**: Used S3 for hosting static assets with fine-grained access control.
* **Version Control**: All project files and code are hosted on GitHub for transparency and collaboration.

### Steps to Reproduce

1. **Prepare the Next.js Application**

   * Clone the Portfolio Starter Kit:

     ```bash
     npx create-next-app@latest nextjs-blog --use-npm --example "https://github.com/vercel/next-learn/tree/main/basics/learn-starter"
     cd blog
     npm run dev
     ```
   * Configure the project:

     ```js
     // next.config.js
     /** @type {import('next').NextConfig} */
     const nextConfig = {
       output: 'export',
     }
     module.exports = nextConfig
     ```
   * Build the project:

     ```bash
     npm run build
     ```

2. **Initialize Git and Push to GitHub**

   ```bash
   git init
   git add .
   git commit -m "Initial commit of Next.js portfolio starter kit"
   git remote add origin https://github.com/<your-username>/terraform-portfolio-project.git
   git push -u origin master
   ```

3. **Set Up Terraform Configuration**

   * Create the necessary Terraform files for S3, CloudFront, and IAM policies.
   * Initialize and apply the Terraform configuration:

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

4. **Upload the Next.js Static Site to S3**

   ```bash
   aws s3 sync ../blog/out s3://your-bucket-name
   ```

5. **Access the Deployed Website**

   * Retrieve the CloudFront URL:

   ```bash
   terraform output cloudfront_url
   ```

   * Visit the provided URL to view the live site.

### Key Technologies Used

* **Next.js**: Framework for the frontend.
* **AWS S3**: Static asset hosting.
* **AWS CloudFront**: Global content delivery.
* **Terraform**: Infrastructure as Code.
* **GitHub**: Version control and collaboration.

### Future Improvements

* Implement custom domain support with Route 53.
* Add automated CI/CD pipeline for faster deployments.
* Integrate security best practices like HTTPS enforcement and access logging.


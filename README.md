# Enforcing Azure Security compliance via Terraform Test Framework (Terraform version 1.6>)

This repository contains Terraform configurations to provision Azure resources, along with automated test scripts leveraging the new Terraform Test Framework (https://developer.hashicorp.com/terraform/cli/test) to validate compliance against security best practices.

The Terraform configs provide reusable modules for deploying Azure resources like Storage Accounts, Virtual Machines, Network Security Groups etc. The test scripts execute in CI/CD pipelines to spin up ephemeral Azure environments using these modules and run validation checks.

Key features:

Modular Terraform configs for deploying disposable Azure test environments
Automated policy checks for security misconfigurations like open RDP access, public blob access etc..
Detailed test reports on violation of predefined Azure security baselines
Built-in remediation workflows for auto-fixing failing security validations
This testing framework allows engineers to catch and fix security policy violations early in the development lifecycle. It prevents insecure Azure infrastructure from reaching production by baked-in compliance checks against benchmarks like CIS Controls.

The automated validations give rapid feedback on potential misconfigurations before changes are applied. This proactively improves the security posture of Azure environments managed through Terraform.

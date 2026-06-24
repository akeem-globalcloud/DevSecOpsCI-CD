# Story 2: Healthcare IAM Governance & RBAC

## Overview

This story implements Identity and Access Management (IAM) governance for the Healthcare Landing Zone using Terraform. The solution follows Role-Based Access Control (RBAC) principles to ensure healthcare personnel receive only the permissions required to perform their duties while supporting security, compliance, and audit requirements.

## Business Requirement

As a Cloud Security Engineer, implement secure IAM governance for healthcare users so that doctors, nurses, billing personnel, telehealth staff, and security administrators can access only the resources necessary for their roles.

## Architecture Components

### IAM Groups

* Doctors
* Nurses
* Billing
* Telehealth
* SecurityAdmins

### IAM Policies

#### AWS Managed Policies

* ReadOnlyAccess
* SecurityAudit

#### Custom Policy

* DoctorsEHRAccess

## Terraform Modules

### Reusable IAM Module

Location:

```text
modules/iam
```

Module Responsibilities:

* Create IAM Groups
* Attach AWS Managed Policies
* Create Custom IAM Policies
* Attach Custom Policies to IAM Groups

## Deployment Structure

```text
infrastructure/
└── healthcare-landing-zone/
    └── aws/
        ├── main.tf
        ├── iam.tf
        ├── provider.tf
        ├── variables.tf
        ├── outputs.tf
        └── terraform.tfvars

modules/
└── iam/
    ├── main.tf
    ├── variable.tf
    ├── variables.tf
    └── provider.tf
```

## Security Controls Implemented

### Doctors Group

* ReadOnlyAccess
* DoctorsEHRAccess Custom Policy

### Nurses Group

* ReadOnlyAccess

### Billing Group

* ReadOnlyAccess

### Telehealth Group

* ReadOnlyAccess

### SecurityAdmins Group

* SecurityAudit

## Validation

Terraform validation completed successfully.

```bash
terraform fmt
terraform init
terraform validate
```

Result:

```text
Success! The configuration is valid.
```

## Deployment

Story 2 was deployed independently using targeted Terraform deployment:

```bash
terraform apply \
-target=module.doctors_group \
-target=module.nurses_group \
-target=module.billing_group \
-target=module.telehealth_group \
-target=module.security_admins_group
```

Deployment Result:

```text
Apply complete! Resources: 12 added, 0 changed, 0 destroyed.
```

## Key Outcomes

* Implemented healthcare RBAC model
* Established least-privilege access controls
* Created reusable Terraform IAM module
* Enabled secure healthcare user segregation
* Improved governance and compliance readiness
* Prepared foundation for HIPAA audit and monitoring controls

## Future Enhancements

* IAM Users and Federated Access
* MFA Enforcement
* Permission Boundaries
* AWS IAM Identity Center (SSO)
* HIPAA Audit Logging Integration
* Automated Compliance Monitoring

## Author

Akeem Olakunle Ogundipe

AWS Security & Infrastructure Engineer | DevSecOps & Cloud Security Specialist

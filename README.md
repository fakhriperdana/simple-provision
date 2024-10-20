# simple-provision

Simple infrastructure provisioning

## Prerequisites

- Terraform installed
- AWS CLI configured
- A valid AWS Key Pair (for SSH access)

## Usage

1. Clone the repository and navigate to the `terraform` directory:

    ```bash
    git clone https://github.com/fakhriperdana/simple-provision.git
    cd simple-provision/terraform
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Apply the configuration:

    ```bash
    terraform apply
    ```

   Confirm with `yes` when prompted.

4. Once the process is completed, you will see the private IP address of the EC2 instance.

6. To SSH into the instance, use:

    ```bash
    ssh -i /path/to/your/dummy-key.pem ubuntu@<private_ip>
    ```

7. Verify NGINX installation:

    ```bash
    sudo systemctl status nginx
    ```

## Cleanup

To destroy the resources created by this project:

```bash
terraform destroy

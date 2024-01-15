# TF-Import-AWS-Route53-Zone-and-Records
The code I used to help me import my existing AWS Route 53 Hosted Zone into my Terraform code. 

How to use:
1. Clone the repo to your local machine

    ```zsh
    git clone "https://github.com/impulsive-sudor/TF-Import-AWS-Route53-Zone-and-Records.git"
    ```

2. Change the tfvar values in the *terraform.tfvars* file to ones that are relevant to your environment.

    ```terraform
    aws_region = "us-east-1"
    zone_id = ""
    my_domain = "example.com"
    cname = "._domainkey.example.com"
    ```

3. If you aren't using [Fastmail](https://www.fastmail.com), adjust the "fm" ID in the CNAME to what's used by your email provider. (For example, [protonmail](https://proton.me/mail) is just "protonmail")

    ```terraform
    import {
    to = aws_route53_record.cname-1
    id = "${var.zone_id}_fm1${var.cname}_CNAME"
    }
    ```

4. Run the following command to output your current infrastructure into terraform code.

    ```zsh
    terraform plan -generate-config-out=generated.tf
    ```

5. You should now see a *generated.tf* file in your current directory. If you do, congrats! You have successfully imported your Terraform infrastructure using Terraform import.

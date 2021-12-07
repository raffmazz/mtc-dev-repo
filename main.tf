//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/rmlab-terraform/compute/aws"
  version = "1.0.0"

  aws_region = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDucikWToiu14QSt34G6X3vMnXOAyxS7kLPF/PtYXSNM81yH8V1eQ4RgbxBJLIwq3HsNQhhfaRiy9tgzzeSHvGlwfWnRsU0RbGazGgZJ/dzBEpQc4K5JINxUBG+U3Wy2FGubHLwoWNQ4N/k4hD58YJwJ5lbqVCbb1PzbP2W8HZaf1IMFWddwkRSIQDZqPS6gRg851CdmMq036vrVx/G7Ug4hoatuF+s1lRsi2Jn0aGE1zCfjXFpLU9BNdthzuzAYv1bt84G0CCX564+v2Pcyu+wouvsLLtZIgewJsIx71qQ6SrGLmtWR+O6dz4sImINLZzFhRLm51WiktpgqcjkrGQ1 ubuntu@ip-172-31-9-199"
  public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/rmlab-terraform/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-east-1"
}
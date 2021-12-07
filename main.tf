//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/rmlab-terraform/compute/aws"
  version = "1.0.0"

  aws_region = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPKBOe4oY2kWojeRcaJgXVxiI8nv74j3852hbKTrOfTxEMTKKsqIpAaZs5kQTPRneoAUsvlPuBPQY0TBMXuOt+KpwCfn0vuZrX8GeS3b8YUtZ3dzGn6SHETc9/Cf3AqfazRfcL5kqnchJO4a6lVX394dBNjnNiNjdgs7smrCyFYsudpcTnlUNitRFla2G2Xv9N+H4k7cCGhyp0RMrHPhE/g8UrmlpwU/EeRqIrozHbFSeiqulyYSX2OUkV8Kc6qoi/n4QGRh07tY/UGhQL+RkJoAZiNuh06KPy+OIt+pbh5swUDcF1wEexVG7qEhKbrS971V85uwzXu6VzqzOg3n7H ubuntu@ip-172-31-9-199"
  public_sg = "${module.networking.public_sg}"
  public_subnets = "${module.networking.public_subnets}"
}

module "networking" {
  source  = "app.terraform.io/rmlab-terraform/networking/aws"
  version = "1.0.0"

  access_ip = "0.0.0.0/0"
  aws_region = "us-east-1"
}
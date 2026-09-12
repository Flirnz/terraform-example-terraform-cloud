moved {
  from = aws_vpc.tf_cloud
  to   = module.networking.aws_vpc.this
}
moved {
  from = aws_subnet.tf_cloud
  to   = module.networking.aws_subnet.this["subnet1"]
}
module "networking" {
  source  = "app.terraform.io/Flirnz/networking/aws"
  version = "0.1.0"
  vpc_config = {
    cidr_block = var.vpc_cidr
    name       = "terraform-cloud"
  }
  subnet_config = {
    subnet1 = {
      cidr_block = var.subnet_cidr
      az         = "eu-west-1c"
    }
  }

}
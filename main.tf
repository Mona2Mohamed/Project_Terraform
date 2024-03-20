module "web_sg" {
    source= "./modules/security_group/"
    vpc_variable = module.network.vpc.id  
}

module "network" {
    source = "./modules/network"
    vpc_variable = var.vpc_variable
    public_subnet = var.public_subnet
    private_subnet = var.private_subnet
}
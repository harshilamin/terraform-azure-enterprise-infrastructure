locals {
  spoke_subnets = {
    aks = ["10.10.1.0/24"]
    app = ["10.10.2.0/24"]
  }
}

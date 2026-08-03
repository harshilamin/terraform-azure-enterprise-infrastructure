locals {
  spoke_subnets = {
    aks = ["10.20.1.0/24"]
    app = ["10.20.2.0/24"]
  }
}

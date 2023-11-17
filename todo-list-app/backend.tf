# terraform {
#   backend "s3" {
#     bucket = "terraform-backend"
#     key    = "backend/Todo-app-eks.tfstate"
#     region = "us-east-1"
#     dynamodb_table = "dynamoDB-state-locking"
#   }
# }


terraform {
  cloud {
    organization = "nemozon-sandbox"

    workspaces {
      name = "K8-ArgoCD"
    }
  }
}
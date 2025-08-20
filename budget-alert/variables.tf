variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "location" {
  default = "eastus"
}
variable "budget_amount" {
  default = 100
}
variable "email_receiver" {
  default = "youremail@example.com"
}

variable "access_key" {
  type        = string
  description = "Access Key ID."
  sensitive   = true
}
variable "secret_key" {
  type        = string
  description = "Secret Access Key."
  sensitive   = true
}
variable "key_name" {
  type        = string
  description = "Key Pairs."
  sensitive   = true
}
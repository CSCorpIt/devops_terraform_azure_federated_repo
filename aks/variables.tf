variable "clientID" {
  description = "The name of the solution or project."
  type        = string
  default     = ""

}

variable "tenantID" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = ""
}

variable "subID" {
  description = "The deployment environment (e.g., dev, test, prod)."
  type        = string
}


variable "region" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "eastus2"
}


variable "solutionName" {
  description = "The solution name"
  type        = string
}
variable "ssm_documents" {
  type = map(object({
    name            = string
    document_format = string
    document_type   = string
    content         = string
    tags            = map(string)

  }))
  description = "The network security groups with their properties."
  default     = {}
}

variable "aws_region" {
  type = string
  description = "aws region"
  default = "eu-east-1"
}
variable "ssm_documents" {
  type = map(object({
    name            = string
    document_format = string
    document_type   = string
    content         = map(string)
    tags            = map(string)

  }))
  description = "The network security groups with their properties."
  default     = {}
}
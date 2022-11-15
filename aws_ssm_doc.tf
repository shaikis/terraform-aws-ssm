### management/document (playbook)
resource "aws_ssm_document" "diskfull" {
  for_each = var.ssm_documents
  name            = each.value["name"]
  document_format = each.value["document_format"]
  document_type   = each.value["document_type"]
  content         = file("${path.module}/templates/${each.value["content"]}")
}

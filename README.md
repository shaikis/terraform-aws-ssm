# terraform-aws-ssm
configure SSM

## usage of this module. 
```
module "ssm_documents" {
    source = "git@github.com:shaikis/terraform-aws-ssm.git?ref=v1.2

 ssm_documents = {
   ssm_doc1 = {
       name = "disk_full"
       document_format = "YAML"
       document_type   = "Command"
       content         = "disk_full.yaml"
       tags            = { env = "test" }
   },
   ssm_doc2 = {
     name = "cwagent_doc"
     document_format = "YAML"
     document_type   = "Command"
     content         = "cwagent.yaml"
     tags            = { env = "test" }
   },
   ssm_doc3 = {
     name = "envoy_doc"
     document_format = "YAML"
     document_type   = "Command"
     content         = "envoy.yaml"
     tags            = { env = "test" }
   }
 
     
 }
 
 aws_region="eu-east-1"

}
```
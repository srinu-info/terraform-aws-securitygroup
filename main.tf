resource "aws_security_group" "main" {
    name="${var.project}-${var.environment}-${var.sg_name}"
    vpc_id = var.vpc_id

    egress = {
        form_port=0
        to_port=0
        protocal=-1
        cidr_blocks=["0.0.0.0/0"]
    }
    tags=merge(
        var.sg_tags,
        local.common_tags,
        {
               Name="${var.project}-${var.environment}-${var.sg_name}" 
        }
    )
}
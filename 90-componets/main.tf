module "component" {
    for_each = var.components
    source = "git:://https://github.com/pavan8106788349-art/terraform-roboshop-component.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}
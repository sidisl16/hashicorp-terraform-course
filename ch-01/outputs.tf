output instance_id {
  value       = aws_instance.example.id
  description = "Instance Id"
}

output instance_name {
    value     = aws_instance.example.tags
    description = "Instance Name"
}
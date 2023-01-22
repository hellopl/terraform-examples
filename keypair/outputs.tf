## just for test toset
output "key_pair_id" {
  description = "The key pair ID"
  value       = toset([ for key_pair in aws_key_pair.this : key_pair.key_pair_id ])
} 

## just for test toset
output "key_pair_id" {
  description = "The key pair ID"
  value       = toset([ for key_pair in aws_key_pair.this : key_pair.key_pair_id ])
} 
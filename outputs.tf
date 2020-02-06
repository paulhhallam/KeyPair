output "this_key_pair_name" {
  value = aws_key_pair.Lightsail.key_name
}

output "this_key_pair_fingerprint" {
  value = aws_key_pair.Lightsail.fingerprint
}

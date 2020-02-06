   
provider "aws" {
  region     = "${var.TOPregion}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

#resource "random_string" "wp_id" {
#  length = 10
#  special = false
#}

#resource "aws_key_pair" "Lightsail" {
#  key_name = random_string.wp_id.result
#  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAtAaMGlO0yMvkAKLv1F6WgDb/qDMSj4A8ao+8uGFyq/6xq/sG270mnBPYTAgDuDiB9CNL0DH/OQVKxfsxE3Opgqshnq/DO6EvcKwPv9FVjckYhV2CoFs1oXcChvMj5h0O+a7yjgA2ugKiss1DBCZSmSJ3Uzc6BPo3xVd7m6mIxB5mbjVTfoSHfUxjiGrwmqe1iKMS5WsMOB8lyrOoO3JTbMvSb8i02mCKR1IfsZSiScjPGyMFMUSVhTAaL17bgnb6gba9D1FwuCyMqX3Jxc/vtLs8L425RDTpg0EDBleEDBraFYz3enGC5eL6Z6anadB6Iuak9jZt44IGHHJnFwnT3Q== rsa-key-20200206"
#}


# Create a new Wordpress Lightsail Instance
resource "aws_lightsail_instance" "wp_test" {
  name              = "isitdevops.com"
  availability_zone = "eu-west-2a"
  blueprint_id      = "wordpress_4_9_8"
  bundle_id         = "nano_2_0"
  key_pair_name     = "FromLightsail"
}
  
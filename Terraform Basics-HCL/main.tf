# Local Provider Configuration (No Cloud Provider)
provider "local" {}

# Local resource example: File creation
resource "local_file" "example" {
  filename = "example.txt"
  content  = "This is a sample file created by Terraform."

  # Optional: Set file permissions (you can customize this based on your OS)
  file_permission = "0644"
}

# Local resource example: Directory creation
resource "local_file" "dir_example" {
  filename = "example_directory/README.txt"
  content  = "This is a README file in a directory created by Terraform."

  # Optional: Set file permissions (you can customize this based on your OS)
  file_permission = "0644"
}

# Local Variable Example
locals {
  my_map = {
    "name"     = "John Doe"
    "age"      = 30
    "is_admin" = true
  }

  # Example list of favorite fruits
  favorite_fruits = ["apple", "banana", "mango"]
}

# Output: Display age value from local map
output "age_value" {
  value = local.my_map["age"]
}

# Output: Display greeting message
output "greeting_message" {
  value = "Hello ${upper(local.my_map["name"])}! I know you like ${join(", ", local.favorite_fruits)}!"
}

# Local File Resource for Logging (Optional Example)
resource "local_file" "log_file" {
  filename = "output.log"
  content  = "Terraform configuration applied at ${timestamp()}"
}

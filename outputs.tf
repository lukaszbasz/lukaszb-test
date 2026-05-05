output "server_name" {
  description = "Generated name for the server"
  value       = random_pet.server.id
}

output "database_name" {
  description = "Generated name for the database"
  value       = random_pet.database.id
}

output "cluster_nodes" {
  description = "Generated names for cluster nodes"
  value       = random_pet.cluster[*].id
}

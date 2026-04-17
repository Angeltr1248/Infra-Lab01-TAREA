resource "docker_image" "api_image" {
  name         = "lab/api:latest"
  keep_locally = true
}

resource "docker_container" "api_container" {
  name  = "api_server"
  image = docker_image.api_image.image_id
  ports {
    internal = 3000
    external = 3000
  }
}

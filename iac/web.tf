# Configuración para Web 01
resource "docker_image" "web01_image" {
  name         = "lab/web01:latest"
  keep_locally = true
}

resource "docker_container" "web01_container" {
  name  = "web01_server"
  image = docker_image.web01_image.image_id
  ports {
    internal = 80
    external = 4000
  }
}

# Configuración para Web 02
resource "docker_image" "web02_image" {
  name         = "lab/web02:latest"
  keep_locally = true
}

resource "docker_container" "web02_container" {
  name  = "web02_server"
  image = docker_image.web02_image.image_id
  ports {
    internal = 80
    external = 4001
  }
}

resource "docker_container" "hello_world_app" {
  image = "hello_world_app:latest"
  name  = "hello_world_app"
  restart = "always"
  volumes {
    container_path  = "/myapp"
    host_path = "/Users/uxcam/Projects/learning/docker-on-terraform" 
    read_only = false
  }
  ports {
    internal = 8080
    external = 8080
  }
}


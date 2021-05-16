# What is it?
Containerized steam rust dedicated game server

# How to run?
If you want to use RCON, don't forget to add `+rcon.password "somepass"` to config
## Docker
1. edit `run.cfg` file

1. `docker run --rm -p 0.0.0.0:28015:28015/udp -p 28016:28016 -v $pwd/run.cfg:/home/steam/run.cfg:ro -v $pwd/data:/home/steam/rust-dedicated iamtio/steam-rust-dedicated:latest`

## Kubernetes
1. edit `manifests/configmap.yaml`
1. `kubectl apply -f ./manifests/`

# See also
- https://rust.facepunch.com/
- https://store.steampowered.com/app/252490/Rust
- https://developer.valvesoftware.com/wiki/Rust_Dedicated_Server

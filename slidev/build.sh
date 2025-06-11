#/bin/sh

podman build -t slidev:latest .
VER=$(podman run --rm slidev:latest slidev --version)
podman tag slidev:latest quay.io/pvlerick/slidev:latest
podman tag slidev:latest quay.io/pvlerick/slidev:$VER
podman push quay.io/pvlerick/slidev:latest
podman push quay.io/pvlerick/slidev:$VER

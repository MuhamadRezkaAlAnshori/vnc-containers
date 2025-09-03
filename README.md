# VNC-Containers 🐳

This repository contains Dockerfiles for VNC-enabled containers.
These containers provide a lightweight GUI environment accessible
via VNC or web browser (through noVNC).

They are ideal for running GUI applications in headless environments such as
servers or CI/CD pipelines.

## Features ✨

- Runs a full X virtual framebuffer (Xvfb)
- Provides VNC access via x11vnc
- Includes noVNC for browser-based access (HTML5 VNC client)
- Minimal and reproducible setup using Docker
- Easy to extend for custom GUI applications

## Getting Started 🚀

1. Build the image

```bash
docker build -t vnc-container-fluxbox fluxbox/     # image with fluxbox window manager (lightweight)
docker build -t vnc container-xfce4   xfce4/       # image with xfce4 desktop environment (heavy)
```

2. Run the container

```bash
docker run \
    -p 5900:5900 \ # VNC port
    -p 6080:6080 \ # noVNC port
    <image name>
```

3. Access the GUI

- VNC Client => connect to localhost:5900
- Browser (noVNC) => open http://localhost:6080

## Environment Variables ⚙️

| Variable         | Default value | Description            |
| ---------------- | ------------- | ---------------------- |
| `DISPLAY_WIDTH`  | 1280          | Virtual display width  |
| `DISPLAY_HEIGHT` | 800           | Virtual display height |
| `DISPLAY_DEPTH`  | 24            | Color depth            |

## Extending 🛠️

You can extend these Dockerfiles to run any GUI application:

```dockerfile
FROM <TODO>
RUN apt-get update && apt-get install -y firefox
```

## Use Cases 💡

- Running GUI applications in headless servers
- Remote development environments
- Browser-based access to GUI tools
- CI/CD pipelines with UI-based testing

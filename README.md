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
docker run -it \
    -p 5900:5900 \ # VNC port
    -p 6900:6900 \ # noVNC port
    <image name>
```

3. Start the GUI environment (in the container)

```
/opt/run_ui.sh
```

> [!NOTE]
> This step is required because this image is meant to be used as a base image.
> You should call `/opt/run_ui.sh` in your own `ENTRYPOINT` or `CMD` when extending the image.

4. Access the GUI

- VNC Client => connect to localhost:5900
- Browser (noVNC) => open http://localhost:6080

## Environment Variables ⚙️

| Variable         | Default value | Description            |
| ---------------- | ------------- | ---------------------- |
| `DISPLAY_WIDTH`  | 1280          | Virtual display width  |
| `DISPLAY_HEIGHT` | 800           | Virtual display height |
| `DISPLAY_DEPTH`  | 24            | Color depth            |
| `VNC_PORT`       | 5900          | VNC TCP port           |
| `NOVNC_PORT`     | 6900          | noVNC HTTP port        |

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

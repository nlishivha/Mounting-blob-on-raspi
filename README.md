# Mounting-blob-on-raspi

###Installing Blobfuse on Raspberry Pi (ARM64)

#Blobfuse allows you to mount Azure Blob Storage as a local file system, making it easy to work with cloud storage on your Raspberry Pi. However, Raspberry Pi (ARM64) does not have a pre-built package for Blobfuse. Since Blobfuse is written in Go, you will need to manually build it from source.

Here’s a high-level overview of the installation process:

    Install Go:
    The Raspberry Pi doesn’t support Blobfuse directly via apt packages, so you need to install Go (the language Blobfuse is written in) manually. You can download the latest version of Go (1.20) for ARM64 from the official website, extract it, and set up your system to use it.

    Build Blobfuse from Source:
    Once Go is installed, clone the Blobfuse repository from GitHub and build the Blobfuse binary. This step ensures that the Blobfuse binary is compiled specifically for your ARM64-based Raspberry Pi.

    Mount Azure Blob Storage:
    After building Blobfuse, you can use it to mount your Azure Blob Storage containers as if they were local directories on your Raspberry Pi. This allows you to seamlessly interact with your cloud files just like local files.


## System details

Ubuntu 22.04 LTS 
![image](https://github.com/AFROTECH69/Mounting-blob-on-raspi/assets/102226876/7cae5100-0055-42ac-b196-383fd31d1c70)

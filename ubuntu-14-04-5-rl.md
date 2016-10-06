# Ubuntu 14.04.5 LTS

http://releases.ubuntu.com/14.04.5/ubuntu-14.04.5-desktop-amd64.iso

## Basics

```
sudo apt install git vim stow keepass2 imagemagick
```

# i3 + related

```
sudo apt install i3 rofi compton lxappearance scrot thunar feh playerctl
```

# Playerctl

For media control.

https://github.com/acrisci/playerctl/releases

# Moka Icon Theme

https://snwh.org/moka/download

# Arc Firefox Theme

https://github.com/horst3180/arc-firefox-theme

# Arc Theme

https://github.com/horst3180/Arc-theme

# Dropbox

https://www.dropbox.com/install-linux

# Spotify

https://www.spotify.com/download/linux/

# NVIDIA + CUDA + cuDNN

1. Ensure that the kernel headers and development packages for the currently running kernel is installed:

  ```
  sudo apt-get install linux-headers-$(uname -r)
  ```

2. Disable Nouveau Display Driver:

  Create a file at `/etc/modprobe.d/blacklist-nouveau.conf` with the following contents:

  ```
  blacklist nouveau
  options nouveau modeset=0
  ```

  Regenerate the kernel initramfs:

  ```
  sudo update-initramfs -u
  ```

3. Reboot into text mode (runlevel 3).

4. Verify that Nouveau Display Drivers are not loaded:

  ```
  lsmod | grep nouveau
  ```

5. Install NVIDIA drivers:

  ```
  sudo add-apt-repository ppa:graphics-drivers/ppa
  sudo apt update
  sudo apt install nvidia-352
  ```

6. Install CUDA 7.5:

  ```
  sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb # https://developer.nvidia.com/cuda-downloads
  sudo apt update
  sudo apt install cuda-7-5
  ```

7. Add the following to `~/.bashrc`:

  ```
  export PATH="$PATH:/usr/local/cuda/bin"
  export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
  export CUDA_HOME=/usr/local/cuda
  ```

8. Install cuDNN:

  ```
  sudo dpkg -i libcudnn5_5.1.3-1+cuda7.5_amd64.deb # https://developer.nvidia.com/cudnn
  sudo ln -s /usr/lib/x86_64-linux-gnu/libcudnn.so.5 /usr/lib/x86_64-linux-gnu/libcudnn.so
  ```

# Anaconda

  https://www.continuum.io/downloads

  ```
  bash Anaconda2-4.2.0-Linux-x86_64.sh
  ```

# TensorFlow

  ```
  conda create -n tensorflow python=2.7
  source activate tensorflow
  (tensorflow) export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.11.0rc0-cp27-none-linux_x86_64.whl
  (tensorflow) pip install --ignore-installed --upgrade $TF_BINARY_URL
  ```

# OpenAI Gym

  ```
  apt-get install -y python-numpy python-dev cmake zlib1g-dev libjpeg-dev xvfb libav-tools xorg-dev python-opengl libboost-all-dev libsdl2-dev swig
  source activate tensorflow
  (tensorflow) pip install 'gym[all]'
  ```

  To set the correct default kernel from within Jupyter notebooks:

  ```
  jupyter notebook --generate-config
  ```

  Edit the following line within `~/.jupyter/jupyter_notebook_config.py`:

  ```
  c.MultiKernelManager.default_kernel_name = 'conda env:tensorflow'
  ```

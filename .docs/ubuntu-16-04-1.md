# Ubuntu 16.04.1 LTS

http://releases.ubuntu.com/16.04.1/ubuntu-16.04.1-desktop-amd64.iso

## Basics

```
sudo apt install git vim stow keepass2 imagemagick texlive-full virtualenv virtualenvwrapper cmake qt5-default libboost-all-dev htop tmux
```

## Dotfiles

```
cd ~
git clone https://github.com/pveierland/.dots.git
rm .bashrc .profile
cd .dots
stow *
```

# i3 + related

```
sudo apt install i3 rofi compton lxappearance scrot thunar feh pavucontrol
```

Fix OSD notifications:

```
sudo apt purge dunst
killall dunst
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

# Sublime Text

https://www.sublimetext.com/3

# NVIDIA + CUDA + cuDNN

1. Ensure that the kernel headers and development packages for the currently running kernel is installed:

  ```
  sudo apt-get install linux-headers-$(uname -r)
  ```

2. Install NVIDIA CUDA + drivers:

  ```
  sudo dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64.deb
  sudo apt update
  sudo apt install cuda-8.0
  ```

3. Install NVIDIA cuDNN:

  ```
  tar xvzf cudnn-8.0-linux-x64-v5.1.tgz
  cd cuda/
  sudo cp -P include/cudnn.h /usr/include
  sudo cp -P lib64/libcudnn* /usr/lib/x86_64-linux-gnu/
  sudo chmod a+r /usr/lib/x86_64-linux-gnu/libcudnn*
  ```

4. Fix screen tearing by adding the following lines to `Section "Screen"` in `/etc/X11/xorg.conf`:

  ```
  Option         "TripleBuffer" "True"
  Option         "metamodes" "nvidia-auto-select +0+0 { ForceCompositionPipeline = On }"
  ```

# Anaconda

  https://www.continuum.io/downloads

  ```
  bash Anaconda3-4.2.0-Linux-x86_64.sh
  ```

# TensorFlow

  ```
  conda create -n tensorflow
  source activate tensorflow
  (tensorflow) export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp35-cp35m-linux_x86_64.whl
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

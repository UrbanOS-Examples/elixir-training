# Smart Columbus Elixir Training
Training materials for introducing Elixir and functional programming

## Slide Deck

[Elixir and Operating System Slides](https://docs.google.com/presentation/d/1_aNiaMWIoStVCkQ3P7_2HJWkg8FBRkEqTY_1fvyC4so/edit#slide=id.g5c1a00c65f_0_6)

## Install instructions

### Windows
#### Elixir
Follow the link to download the installer and follow the prompts: https://repo.hex.pm/elixir-websetup.exe
#### Docker and Compose
Download the package installer and follow the prompts: https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe

#### Git
Download the installer and follow the prompts: https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/Git-2.21.0-32-bit.exe

### MacOS
#### Elixir
First, install Homebrew, then Elixir via the following commands in your terminal:
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew update`
- `brew install elixir`

#### Docker and Compose
Download the package installer and follow the prompts: https://download.docker.com/mac/stable/Docker.dmg

#### Git
MacOS comes pre-installed with a compatible version of Git, although you can install a newer one via Homebrew

### Linux
#### Elixir
For Debian linux flavors, including Ubuntu, run the following commands in your terminal:
- `wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb`
- `sudo dpkg -I erlang-solutions_1.0_all.deb`
- `sudo apt-get update`
- `sudo apt-get install esl-erlang`
- `sudo apt-get install elixir`

For RHEL flavors, including Fedora and CentOS, run the following:
- `sudo yum install elixir`

#### Docker and Compose
Again, for Debian flavors, run the following terminal commands:
- `sudo apt-get update`
- `sudo apt-get install apt-transport-https ca-certificates curl gnuph-agent software-properties-common`
- `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
- `sudo apt-add-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs_ stable"`
- `sudo apt-get update`
- `sudo apt-get install docker-ce docker-ce-cli containerd.io`

For RHEL flavors, run the following terminal commands:
- `sudo yum install -y yum-utils device-mapper-persistent-data lvm2`
- `sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo`
- `sudo yum install docker-ce docker-ce-cli containerd.io`
- `sudo systemctl start docker`

#### Git
All major distributions of Linux come pre-installed with a recent version of Git. If your version is out of date, check your distribution's package management system (most likely `apt` or `yum`) for available updates.

# Smart Columbus Elixir and Architecture Training
Training materials for introducing Elixir and functional programming as well as the unique architecture of the Operating System project's data platform

## Slide Deck

[Elixir and Operating System Slides](https://docs.google.com/presentation/d/1_aNiaMWIoStVCkQ3P7_2HJWkg8FBRkEqTY_1fvyC4so/edit#slide=id.g5c1a00c65f_0_6)

## Further Reading and Learning Resources
- Exercism.io: Install exercism for your laptop (instructions provided on the site) and do over 90 Elixir exercises to practice; choose the "mentored" track and community mentors from Exercism will provide feedback on your implementations.
- Read any of these great books on Elixir:
    - Learn Functional Programming with Elixir by Ulisses Almeida
    - Programming Elixir >= 1.6 by Dave Thomas
    - Programming Phoenix >= 1.4 by Chris McCord, Bruce Tate, and Jose Valim
    - The Little Elixir and OTP Guidebook by Ben Tan Wei Hao
    - Or many others for more in-depth study on specific frameworks, application design, or the Erlang Virtual Machine internals
- Take Dave Thomas's "Elixir for Programmers" on-line course ($30) at https://codestool.coding-gnome.com/courses/elixir-for-programmers
- For more about getting started with Kubernetes, the foundational computing platform the project runs on top of, start here: https://kubernetes.io/docs/tutorials/

## Next Steps

Here are some options for getting connected and staying involved in the project once you've gotten your feet wet:
- Submit issues and feature request through the projects' various Github repositories. Look for any project at github.com/smartcitiesdata.
- Submit code changes, patches, or new features yourself as a Pull Request. For an intro to the Git tool and workflow for newcomers, check out this tutorial: https://www.codecademy.com/learn/learn-git. The basic workflow to integrate with the Smart Cities Data project is:
    - For ideas on what changes or bugfixes have already been identified for the project, check out the open issues on any of the smartcitiesdata repositories or go to ZenHub.com (sign up with your Github account) and see the entire project's backlog (once signed in, you may need to choose "Open Source Repos" from the drop-down at the top-left corner of the screen, search for smartcitiesdata/, including the slash, and choose any of the listed repos under the project to view the full backlog)
    - Fork the code you want to modify from the project repo (click the "fork" button in the top-right corner of the project page)
    - Clone your new fork of the code from your own repo to your work station and make your changes. Optionally checkout your own _master_ branch to a named _feature branch_ of your choosing.
    - Run all the tests associated with the repo to make sure none of your changes have triggered any incompatibilities in the existing code
    - Push the code back to Github
    - When you're ready to submit the code for review from the maintainers and get it merged into the project and deployed, open a _Pull Request_ on your repo. It should default to offering to merge your own fork branch back into the source repo's master branch
    - The pull request will trigger the code to be built in the CI system (Travis-CI.org). Follow the link that appears in the pull request screen to see your code built and tested by Travis.
    - There may be a dialogue with the maintainers in case there are any failing tests, stylistic changes requested to match project or community conventions, or suggestions for better integrations with the rest of the project.
    - When any discussions has been resolved the maintainers will merge the code into the source master branch and within a few days the changes will get deployed to production.
- Contribute to the projects' Wikis; if you're not sure where to contribute or how to organize your contributions, ask a member of the community for advice.
- Have a discussion with the community on our Gitter account at: https://gitter.im/smartcitiesdata/community (sign up for Gitter with your Github account)
- Stay connected! We'll have periodic checkins over Zoom or Google Hangouts with members of the contributor community or stop by the Smart Columbus Experience Center at 170 S. Civic Center Dr, Columbus, OH 43215 to visit the team.

## Install instructions

### Windows
#### Elixir
Follow the link to download the installer and follow the prompts: https://repo.hex.pm/elixir-websetup.exe
#### Docker and Compose
Download the package installer and follow the prompts: https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe

For older versions of Windows or for Windows Home users (Docker Desktop for Windows is only supported on Pro, Enterprise, or Education editions) install the latest Docker Toolbox, found here: https://github.com/docker/toolbox/releases/download/v18.09.3/DockerToolbox-18.09.3.exe

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

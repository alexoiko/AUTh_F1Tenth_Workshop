AUTh F1TENTH Workshop 22-February-2023
===

Installation Steps:
---

1) Download **Ubuntu 18.04** ISO file from [(https://releases.ubuntu.com/18.04.6/](https://releases.ubuntu.com/18.04.6/)
(Desktop, ISO image, 64bit)

2) Download and Install a **Virtual Machine**, e.g. Vmware Workstation [Download for Windows](https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html)

3) Create new virtual machine (use wizard).

    > Choose Typical, ISO, Credentials, 20Gb.

4) Open terminal, e.g. Ctrl+Alt+T shortcut

5) `sudo apt install git`
6)  Download script via ``git clone https://github.com/alexoiko/AUTh_F1Tenth_Workshop.git``
7)  `sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'`
8) `cp AUTh_F1Tenth_Workshop/setup_f1_auth.bash .`

8) Change permission ``chmod +x setup_f1_auth.bash``
9) Run Script, e.g. ``bash setup_f1_auth.bash``

#!/bin/sh
echo "Installing RASPA3 on Ubuntu 22.04"
echo "STEP 1: Updating the system"
sudo apt-get update -y && sudo apt-get upgrade -y
echo "STEP 2: Installing the required packages"
sudo apt-get install -y build-essential gfortran libfftw3-dev libblas-dev liblapack-dev libopenmpi-dev openmpi-bin
echo "STEP 3: Downloading the RASPA3 source code"
wget https://github.com/iRASPA/RASPA3/releases/download/v3.0.0/raspa_3.0.0_amd64_ubuntu-22-core-avx2.deb
echo "STEP 4: Installing RASPA3"
sudo dpkg -i raspa_3.0.0_amd64_ubuntu-22-core-avx2.deb
sudo apt-get install -f
echo "RASPA3 has been successfully installed on Ubuntu 22.04"
echo "STEP 5: Installing the RASPA3 GUI (iRASPA)"
wget https://github.com/iRASPA/iRASPA-QT/releases/download/v2.3.2/iraspa_2.3.2-ubuntu-22.04_amd64.deb
sudo dpkg -i iraspa_2.3.2-ubuntu-22.04_amd64.deb
sudo apt-get install -f
echo "iRASPA has been successfully installed on Ubuntu 22.04"
echo "Installation completed"
echo "STEP 6: Cleaning up"
rm raspa_3.0.0_amd64_ubuntu-22-core-avx2.deb
rm iraspa_2.3.2-ubuntu-22.04_amd64.deb
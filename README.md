# Install RASPA3 on Ubuntu running on Windows Subsystem for Linux (WSL)
## 1. Install the WSL on the Windows 10
- [Install the WSL on the Windows 10](https://docs.microsoft.com/en-us/windows/wsl/install)
## 2. Install the Ubuntu on the WSL
```bash
wsl --install Ubuntu-22.04
```
## 3. Install the RASPA3 on the Ubuntu
```bash
sed -i 's/\r//g' install_raspa3_on_ubuntu2204.sh
sudo bash install_raspa3_on_ubuntu2204.sh
```
## 4. Run the RASPA3 on the Ubuntu
```bash
iraspa
```

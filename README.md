# Indemind usb driver

## Install
```bash
mkdir build
cd build
# Without installing the udev rules on the current system
cmake .. -DCMAKE_INSTALL_PREFIX=<install_path>
make install
# or installing the udev rules on the system (requires root privileges)
cmake .. -DCMAKE_INSTALL_PREFIX=<install_path> -DINSTALL_UDEV_SYSTEM=true
sudo make install
```


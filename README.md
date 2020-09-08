# OpenCore DELL Inspiron 5584

### Computer Spec:

| Component        | Brank                              |
| ---------------- | ---------------------------------- |
| CPU              | Intel i7 8550U                     |
| iGPU             | Intel® UHD Graphics 620            |
| dGPU             | AMD Radeon 530 (disabled on macOs) |
| Display          | 1920x1080                          |
| Audio            | Realtek ALC295                     |
| Ram              | 32 Gb ddr4 2400 Mhz                |
| Wifi + Bluetooth | Bcm94360ng (replaced)              |
| NVMe             | Samsung 970 evo plus 500 Gb        |
| SSD              | Samsung 850 evo 500gb              |
| SmBios           | MacbookPro 14,1                    |
| BootLoader       | OpenCore                           |

![infocatalina](./Screenshot/infomaccatalina.png)

![infobigsur](./Screenshot/infocacbigsur.png)

## DPCIManager Screenshot

![infodp1](./Screenshot/DpciScreen1.png)
![infodp2](./Screenshot/DpciScreen2.png)

### What works and What doesn't or WIP:

- [x] Intel UHD 620 iGPU eDP Output (with Backlight)
- [x] Intel UHD 620 iGPU HDMI Output
- [x] ALC295 Internal Speakers
- [x] ALC295 Native Combojack headphones
- [x] ALC295 HDMI Audio Output
- [x] All USB Ports 
- [x] SpeedStep / Sleep / Wake
- [x] I2C Touchpad with gesture
- [x] Brightness Key
- [x] Wi-Fi and Bluetooth Bcm94360ng Module
- [x] Realtek RTL8168 LAN
- [x] USB Cardreader
- [x] ACPI Battery
- [x] NVRAM
- [x] Windows boot from OpenCore
- [ ] Fingerprint
- [ ] dGPU Amd 530
- [ ] ALC295 Combojack microphone

### Special Config:

- Usb port mapping performed
- Disabled unused device
- Applied cosmetics DSM
- Cfg lock unlocked

### Post Install:
Open terminal and run install.sh from PostInsall/ComboJackAlc295. After reboot insert jack and appears this image
![jack](./Screenshot/Combojackfix.png)

## PCI Section Screenshot

![pcisection](./Screenshot/PCISEZ.png)

See [ioreg](./ioregmacbook.ioreg) for more clarification

## Credits

- [Apple](https://apple.com) for macOS;
- [Acidanthera](https://github.com/acidanthera) for OpenCore and all the lovely hackintosh work.
- [Dortiana](https://github.com/dortania)
- [mald0n](https://github.com/MaLd0n)
- [rehabman](https://github.com/RehabMan)
- [daliansky](https://github.com/daliansky)
- [Hackintoshlifeit](https://github.com/Hackintoshlifeit)

# If you need help please contact us on [Telegram](https://t.me/HackintoshLife_it) or [Web](https://www.hackintoshlife.it/)

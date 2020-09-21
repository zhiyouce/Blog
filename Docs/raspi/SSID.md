## 基本配置

### raspi-config
- SSID
- Proxy

### vedio
- disable/enable 4Kp60
- tv output

### GPU
- 128M should or the camera can not work

### CLI
- raspi-config
- raspi-gpio

### wifi power management on/off

- not work if reboot
``` shell 
iwconfig

iw wlan0 set power_save off

```

- add this on /etc/rc.local

```
iwconfig wlan0 power off 
```
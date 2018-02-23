# Zimbra + Ansible + Vagrant

Zimbra test project using lucascbeyeler.zimbra ansible role.

Starting zimbra and install

```bash
vagrant up
```

..wait :) 

Then go to https://192.168.99.181

## Install on a real server

To install on a real virtual machine use installvm.sh script. You need to edit hosts file before launching install.

It's important that the first line contains your server address, the fqdn name and the hostname

like

```text
192.168.99.181	zimbra1.semino.it	zimbra1
```

then, install launching script

```bash
./installvm.sh
```



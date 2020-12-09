# Managing UFW from command line

UFW ( Uncomplicated Firewall ) firewall is a default firewall on Ubuntu 18.04 Bionic Beaver Linux.

## Check a current firewall status

By default the UFW is disabled. You can check the status of your firewall by executing the following linux command:

```console
$ sudo ufw status
[sudo] password for nahid: 
Status: inactive
```

For more verbose output append word verbose to the above command:

```console
$ sudo ufw status verbose
Enable Firewall
```

```console
To enable firewall execute:
$ sudo ufw enable
Command may disrupt existing ssh connections. Proceed with operation (y|n)? y
Firewall is active and enabled on system startup
```

Firewall, is now enabled:

```console
$ sudo ufw status
Status: active
```

## Disable Firewall

UFW is quite intuitive to use. To disable firewall execute:

```console
$ sudo ufw disable
Firewall stopped and disabled on system startup
```

Confirm the firewall status:

```console
$ sudo ufw status
Status: inactive
```

## Managing UFW via graphical user interface

Install `gufw` package if you wish to manage our UFW firewall via graphical user interface application. Open up terminal and enter:

```console
$ sudo apt install gufw
```

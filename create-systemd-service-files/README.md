# Create Systemd Service files

First Create a bash script and save it `pointless.sh`

```sh
> vim pointless.sh
```

`pointless.sh script` ↩

```sh
#!/bin/bash

while true
do
    echo The current time is $(date)
    sleep 1
done
```

Next create `pointless.sh` is executable.

```sh
> chmod +x pointless.sh
```

Now that we have a service that we want to systemd to manage. Let's create a service file.
Goto `/etc/systemd/system'

```sh
> cd /etc/systemd/system/
```

Here we create a new file. In that case we named it `pointless.service`
`It is important to file name end with .service extension`

```sh
> vim pointless.service
```

```sh
[Service]
ExecStart=/media/nahid/services/pointless.sh
```

**Note: Technically that all we need to do.**

We can now run our service with...

```sh
> sudo systemctl start pointless
```

We can verify the service is running with...

```sh
> sudo systemctl status pointless
```

We should see a `green circle` along with the `active running text to indicate it is running`. It also tell us what the `process id` is. After the status information it will also output a few lines of the most recent `log` output.

By default the standard output of of a service goes to `syslog`. So we can view the output by -

```sh
> tail /var/log/syslog

# using option -f tail the log. you can also run above command like this

> tail /var/log/syslog -f

# or by running
> sudo journalctl -u pointless # show the output

# or you can using -f option to tail the log
> sudo journalctl -u pointless -f
```

Now to stop our service with -

```sh
> sudo systemctl stop pointless
```

At this point we know how to create and manage a very simple service. Depending on our use case, this may be all you need, but we will need to customize a few things.

Let's see the some more common option. To see this please run...

```sh
> man systemd.service
```

Now we edit our `pointless.service` file.

In `pointless.service files` their is three sections `[Service]`, `[Unit]` and `[Install]`

`[Unit]`: Unit section should be place on top.
`[Service]`: Set `WorkingDirectory`, `ExecStart` and User and other options.

```sh
# [Unit] section
[Unit]
Description=My pointless service
After=network.target # This specifies that the service needs networking to be ready before starting

# [Service] section
[Service]
ExecStart=/media/nahid/services/pointless.sh
Restart=always
WorkingDirectory=/home/nahid
User=nahid
Group=nahid
# Environment=GOPATH=/home/nahid/go

# Install section is needed if you want to run systemctl enable to have your service run automatically on startup
[Install]
WantedBy=multi-user.target # This tells systemd we want to this load as part of the standard multi-user boot process.
```

Now go back to the terminal and run...

```sh
> sudo systemctl enable pointless # This will enable the service automatically when system is reboots.

# You can disable this running
> sudo systemctl daemon-reload # If you normally modify a service file make sure daemon-reload

# We can also restart the service with
> sudo systemctl restart pointless

> sudo systemctl status pointless # to see the status of our pointless service

# we can also edit the service file with
> sudo systemctl edit pointless --full # In this case you don't need to run daemon-reload. This work only for existing files not able to create new file.
```

# Taskserver container

This is an Alpine container with taskd (taskwarrior server).

It is intended as a base image.

Rebuilt whenever `alpine:latest` is.

# Volumes

- `/var/taskd` (which is also the value set for `$TASKDDATA`)


# First run

Run the initialization functions:

```
docker run -it --rm --volume [your-config-dir]:/var/taskd benyanke/taskserver taskd init
docker run -it --rm --volume [your-config-dir]:/var/taskd benyanke/taskserver taskd config server localhost:53589
docker run -it --rm --volume [your-config-dir]:/var/taskd benyanke/taskserver taskd config --force log /var/log/taskd.log
docker run -it --rm --volume [your-config-dir]:/var/taskd benyanke/taskserver taskd config --force pid.file /var/run/taskd.pid
docker run -it --rm --volume [your-config-dir]:/var/taskd benyanke/taskserver taskd config --force server localhost:53589

```

TODO: add these to an entrypoint

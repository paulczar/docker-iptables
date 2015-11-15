# IPTABLES firewall container

If you don't have access to iptables on the host that you're running on this might be useful to you.

To protect your host with this ... you'll need to set `--net=host` and `--cap-add=NET_ADMIN` in
your `docker run` command.

takes two inputs in the form of environment variables with comma seperated values.

* TCP_PORTS:  A list of TCP Ports which we should accept all traffic to
* HOSTS: A list of hosts for which we should accept all traffic

any other traffic is DROPped.

example usage:

```
$ docker run --name firewall -e TCP_PORTS=22 -e HOSTS=172.12.1.1/32 --rm -ti --cap-add=NET_ADMIN paulczar/iptables
```

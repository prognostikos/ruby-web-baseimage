A simplified version of [Phusion's Passenger
Docker](https://github.com/phusion/passenger-docker) w/out Phusion Passenger

Made as a base image for running Ruby web apps fronted by Nginx. Follows the
Phusion baseimage philosophy of a container for each logical app (minus backing
services) rather than a container for each process.

Each application that uses this image should have a Dockerfile that among other
things should:

* set up the proper
  [environment](https://github.com/phusion/baseimage-docker#environment_variables) for the application
* configure syslog-ng to send to e.g. papertrail
* add a runit service to start the application server
* add a runit service to start job workers
* add the app-specific nginx virtualhost configuration
* install the application bundle
* pre-compile the application assets

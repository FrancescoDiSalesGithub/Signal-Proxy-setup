# Signal-Proxy-setup
A Guide about how to setup a signal proxy for Signal app.

## Introduction

If you want to hide your network traffic when you use signal app to your ISP, you need to set a **Signal proxy**. In this guide you will be able to do in full proxy installation in few steps.


## Requirements

* VPS
* A domain name
* Debian based linux distribution
* Docker
* Docker-compose
* Git


## How to get a VPS

For a VPS you can try with famous VPS providers such as:

* Digital Ocean
* Linode
* Vultr

Or cloud providers such as:

* Amazon Web Service EC2
* Google Cloud Compute Engine

For each one it is suggested to run the most economic option.

## How to get a domain name

As for a domain name I suggest to use the most economic solution: **freenom.com**
After registering on freenom, register (or login in if you are already registered) on cloudflare, and use cloudflare's name servers on your freenom domain.

## Installing the Signal proxy server

After the vps is running, run the following:
`sudo apt update && sudo apt install -y docker.io docker-compose git`

After the installation from apt download the signal proxy from:
`git clone https://github.com/signalapp/Signal-TLS-Proxy.git`

Go then to the folder **Signal-TLS-Proxy**:
`cd Signal-TLS-Proxy`

Run the **init-certificate-script.sh** and when asked enter your domain:
`./init-certificate.sh`

After the script is done, launch the proxy with docker-compose:
`docker-compose up -d`

The proxy is now running.

## How to enable the proxy on Signal app

On your Signal application, go to data and memory menu voice, and scroll at the bottom of the page.
There will be a voice called **Proxy** and the a sub-menu voice **Use Proxy**. When you reach that page, enable the proxy and write the domain-name of the signal-proxy, after that press save.

Example:
signal proxy runs on the domain-name: hacking-signal.tk
on the Proxy address text field of your signal application write hacking-signal.tk and then press save.

## Donation

If this guide has helped you please support me donating me monero coins at the following address:
`4B9WQivaHfd3miDfPKEfCianocGpBx9d8FXycz2vmNW3aBDVKHgkBd9Gmapt4RBVEpTwnehujsiUBBehUiLvnEHs7VFstCC`




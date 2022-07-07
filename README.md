## Flatpak repo for i2p.plugins.tor-manager

### Install the repository

This will install my github-hosted flatpak repository and my signing keys.

```sh
flatpak --user remote-add \
    --gpg-import=https://eyedeekay.github.io/flatpak.repo.i2p.plugins.tor-manager/key.gpg \
    org.i2pgit.idk.i2p.plugins.tor-manager https://eyedeekay.github.io/flatpak.repo.i2p.plugins.tor-manager
flatpak --user install org.i2pgit.idk.i2p.plugins.tor-manager org.i2pgit.idk.i2p.plugins.tor-manager
```

### Install the repository over I2P

This will allow you to download the software and install updates using I2P
as a proxy. This example updates from an I2P site.
ps
```sh
http_proxy=http://127.0.0.1:4444 wget http://v6buqybbchgv2ovqqqscxyttihfnpklsifmob22zj67btcr4ps4a.b32.i2p/flatpak.repo.i2p.plugins.tor-manager/key.gpg
http_proxy=http://127.0.0.1:4444 flatpak --user remote-add \
    --gpg-import=key.gpg \
    org.i2pgit.idk.i2p.plugins.tor-manager-i2p http://v6buqybbchgv2ovqqqscxyttihfnpklsifmob22zj67btcr4ps4a.b32.i2p/flatpak.repo.i2p.plugins.tor-manager
http_proxy=http://127.0.0.1:4444 flatpak --user install org.i2pgit.idk.i2p.plugins.tor-manager-i2p org.i2pgit.idk.i2p.plugins.tor-manager
```

#### Update the package over I2P

In order to update the flatpak, it will be necessary to apply the `http_proxy`
environment variable.

```sh
http_proxy=http://127.0.0.1:4444 flatpak --user update org.i2pgit.idk.i2p.plugins.tor-manager
```

### Run the I2P Browser or the Tor Browser

Use the desktop menu to launch the "I2P in Tor Browser" or "Tor Browser Manager"
entries.

### Run the Tor Manager daemon:

This will run the long-lived Tor process and the Tor Manager daemon, with
a WebUI on http://127.0.0.1:7695 for launching Tor Browser and I2P in Tor Browser.

```sh
flatpak run org.i2pgit.idk.i2p.plugins.tor-manager
```

- **[GPG Keys: key.gpg](https://eyedeekay.github.io/flatpak.repo.i2p.plugins.tor-manager/key.gpg)**

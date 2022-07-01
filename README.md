## Flatpak repo for i2p.plugins.tor-manager

### Install the repository

This will install my self-hosted flatpak repository and my signing keys.

```sh
flatpak --user remote-add \
    --gpg-import=https://eyedeekay.github.io/flatpak.repo.i2p.plugins.tor-manager/key.gpg \
    org.i2pgit.idk.i2p.plugins.tor-manager https://eyedeekay.github.io/flatpak.repo.i2p.plugins.tor-manager
flatpak --user install org.i2pgit.idk.i2p.plugins.tor-manager org.i2pgit.idk.i2p.plugins.tor-manager
```

### Install the repository over I2P

This will allow you to download the software and install updates using I2P
as a proxy. This example updates from an I2P site.

```sh
http_proxy=http://127.0.0.1:4444 wget http://v6buqybbchgv2ovqqqscxyttihfnpklsifmob22zj67btcr4ps4a.b32.i2p/flatpak.repo.i2p.plugins.tor-manager/key.gpg
http_proxy=http://127.0.0.1:4444 flatpak --user remote-add \
    --gpg-import=key.gpg \
    org.i2pgit.idk.i2p.plugins.tor-manager-i2p http://v6buqybbchgv2ovqqqscxyttihfnpklsifmob22zj67btcr4ps4a.b32.i2p/flatpak.repo.i2p.plugins.tor-manager
http_proxy=http://127.0.0.1:4444 flatpak --user install org.i2pgit.idk.i2p.plugins.tor-manager-i2p org.i2pgit.idk.i2p.plugins.tor-manager
```

### Run the browser:

```sh
flatpak run org.i2pgit.idk.i2p.plugins.tor-manager
```

- **[GPG Keys: key.gpg](https://eyedeekay.github.io/flatpak.repo.i2p.plugins.tor-manager/key.gpg)**

# Ubuntu Unattended Installer

Create an ISO image that automatically installs Ubuntu Desktop 16.04.

This image is used for testing my provisioning scripts. It is not secure since
it uses `p` as the password and `sudo` works without a password prompt.

## Usage

Build the image with:

    ./build

That will create the ISO image in `./workdir/new.iso`. Boot from it in
VirtualBox.

## TODO

- find out how to answer questions during `apt-get`

## License

ISC

# Ubuntu Unattended Installer

Create an ISO image that automatically installs Ubuntu Desktop 16.04.

This image is used for testing since the password is `p` and `sudo` works
without a password.

## Usage

Build the image with:

    ./build

That will create the ISO image in `./workdir/new.iso`. Boot from it in
VirtualBox.

## TODO

- boot without a password so that the script runs
- fix the keyboard layout/language problem
- find out how to answer questions during `apt-get`

## License

ISC

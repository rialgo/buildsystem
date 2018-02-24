include recipes-core/images/rpi-basic-image.bb

DESCRIPTION = "Custom image based on rpi-basic-image"

# We only need a rpi-sdimg image here
IMAGE_FSTYPES = "tar.bz2 rpi-sdimg"

# Additional packages
IMAGE_INSTALL_append = " \
  wpa-supplicant \
  linux-firmware-bcm43430 \
  snc \
  control-sender \
  motor-control \
  "

export IMAGE_BASENAME = "rpi-image"

define Device/friendlyarm_nanopi-r1s-h3
  DEVICE_TITLE := FriendlyARM NanoPi R1S-H3
  DEVICE_DTS := sun8i-h3-nanopi-r1s-h3
  DEVICE_PACKAGES := \
        kmod-usb-net-rtl8152 \
        kmod-brcmfmac \
        brcmfmac-firmware-43430-sdio \
        kmod-sunxi-gmac \
        kmod-mmc \
        kmod-mmc-sunxi \
        kmod-sdhci

  IMAGES := ext4-sdcard.img.gz squashfs-sdcard.img.gz rootfs.tar.gz

  IMAGE/rootfs.tar.gz := tar.gz

  IMAGE/ext4-sdcard.img.gz := sdcard.img.gz \
        | append-rootfs \
        | pad-to 64k

  IMAGE/squashfs-sdcard.img.gz := sdcard.img.gz \
        | append-rootfs \
        | pad-to 64k
endef
TARGET_DEVICES += friendlyarm_nanopi-r1s-h3


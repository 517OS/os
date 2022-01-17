.PHONY: all
all:
	cd buildroot && make defconfig BR2_DEFCONFIG=../buildroot.config && make

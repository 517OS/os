.PHONY: build clean
517OS_KERNEL_FRAGMENT ?= /dev/null
all: clean build
build:
	cd buildroot && make defconfig BR2_DEFCONFIG=../buildroot.config && make BR2_LINUX_KERNEL_CONFIG_FRAGMENT_FILES=$(realpath ${517OS_KERNEL_FRAGMENT})
clean:
	cd buildroot && make clean

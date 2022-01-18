.PHONY: build clean
all: clean build
build:
	cd buildroot && make defconfig BR2_DEFCONFIG=../buildroot.config && make
clean:
	cd buildroot && make clean

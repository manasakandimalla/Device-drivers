# make file for the sum- product linux kernel program
obj-m += akern.o

KDIR = /usr/src/linux-headers-4.8.0-53-generic

all:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	rm -rf *.o *.ko *.mod.* *.symvers *.order 
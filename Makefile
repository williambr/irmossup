obj-m	:= src/qres_mod.o

src/qres_mod-y = src/qres.o src/qsup.o src/qres_gw_ks.o src/qres_proc_fs.o src/qres_timer_thread.o src/qsup_gw_ks.o src/qsup_mod.o

KBUILD_VERBOSE = 1
MODULE_EXT    := ko
#KFLAGS   := -D__KERNEL__ -DMODULE

KDIR	:= /lib/modules/$(shell uname -r)/build
PWD		:= $(shell pwd)

all:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
clean:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) clean

# File: Makefile
#
# Copyright (C) 2008-2009, Marvell International Ltd. 
#
# This software file (the "File") is distributed by Marvell International 
# Ltd. under the terms of the GNU General Public License Version 2, June 1991 
# (the "License").  You may use, redistribute and/or modify this File in 
# accordance with the terms and conditions of the License, a copy of which 
# is available by writing to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
# worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
# 
# A copy of the GPL is available in file gpl-2.0.txt accompanying in this 
# deliverables.
#
# THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE 
# IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE 
# ARE EXPRESSLY DISCLAIMED.  The License provides additional details about 
# this warranty disclaimer.

CC=		$(CROSS_COMPILE)gcc
LD=		$(CROSS_COMPILE)ld
BACKUP=		/root/backup
YMD=		`date +%Y%m%d%H%M`

#############################################################################
# Configuration Options
#############################################################################

# Debug Option
# DEBUG LEVEL n/1/2:
# n: NO DEBUG
# 1: Only PRINTM(MSG,...), PRINTM(FATAL,...), ...
# 2: All PRINTM()
CONFIG_DEBUG=1

# Proc debug file
CONFIG_PROC_DEBUG=y

# Re-association in driver
CONFIG_REASSOCIATION=y

# Manufacturing firmware support
CONFIG_MFG_CMD_SUPPORT=y

# Big-endian platform
CONFIG_BIG_ENDIAN=n


#############################################################################
# Select Platform Tools
#############################################################################

MODEXT = ko
#13.11.2013/HG:
#EXTRA_CFLAGS += -I$(PWD)/mlan
EXTRA_CFLAGS += -DLINUX

KERNELVERSION_X86 := 2.6.35.14-571-gcca29a0-svn30276
#13.11.2013/HG
KERNELDIR=$(PWD)
W8786UDIR=$(PWD)/drivers/net/wireless/wi2wi/w8786u

LD += -S
#############################################################################
# Compiler Flags
#############################################################################

	EXTRA_CFLAGS += -I$(KERNELDIR)/include
#13.11.2013/HG:
	EXTRA_CFLAGS += -I$(W8786UDIR)/mlan

	EXTRA_CFLAGS += -DFPNUM='"41"'

ifeq ($(CONFIG_DEBUG),1)
	EXTRA_CFLAGS += -DDEBUG_LEVEL1
endif

ifeq ($(CONFIG_DEBUG),2)
	EXTRA_CFLAGS += -DDEBUG_LEVEL1
	EXTRA_CFLAGS += -DDEBUG_LEVEL2
	DBG=	-dbg
endif

ifeq ($(CONFIG_PROC_DEBUG),y)
	EXTRA_CFLAGS += -DPROC_DEBUG
	export CONFIG_PROC_DEBUG
endif

ifeq ($(CONFIG_REASSOCIATION),y)
	EXTRA_CFLAGS += -DREASSOCIATION
endif

ifeq ($(CONFIG_MFG_CMD_SUPPORT),y)
	EXTRA_CFLAGS += -DMFG_CMD_SUPPORT
endif

ifeq ($(CONFIG_BIG_ENDIAN),y)
	EXTRA_CFLAGS += -DBIG_ENDIAN_SUPPORT
endif


#############################################################################
# Make Targets
#############################################################################

ifneq ($(KERNELRELEASE),)

MOALOBJS =	mlinux/moal_main.o \
		mlinux/moal_wext.o \
		mlinux/moal_ioctl.o \
		mlinux/moal_priv.o \
		mlinux/moal_shim.o

MLANOBJS =	mlan/mlan_main.o mlan/mlan_init.o \
		mlan/mlan_cmd.o mlan/mlan_cmdresp.o \
		mlan/mlan_scan.o mlan/mlan_join.o \
		mlan/mlan_rx.o mlan/mlan_tx.o \
		mlan/mlan_event.o mlan/mlan_ioctl.o \
		mlan/mlan_module.o

MLANOBJS += mlan/mlan_wmm.o
MLANOBJS += mlan/mlan_11n_aggr.o
MLANOBJS += mlan/mlan_11n_rxreorder.o
MLANOBJS += mlan/mlan_11n.o
MLANOBJS += mlan/mlan_11d.o

ifdef CONFIG_PROC_FS
MOALOBJS += mlinux/moal_proc.o
ifeq ($(CONFIG_PROC_DEBUG),y)
MOALOBJS += mlinux/moal_debug.o
endif
endif

#13.11.2013/HG:
obj-$(CONFIG_WI2WI) += wi2wi.o
wi2wi-objs := $(MLANOBJS)
wi2wi-objs += $(MOALOBJS)
wi2wi-objs += mlinux/moal_usb.o
endif

ccflags-y += -D__CHECK_ENDIAN__

# End of file

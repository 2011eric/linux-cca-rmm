incdir := $(srctree)/$(src)

incdir += $(srctree)/$(src)/lib/allocator/include
incdir += $(srctree)/$(src)/lib/arch/include
incdir += $(srctree)/$(src)/lib/arch/include/aarch64
incdir += $(srctree)/$(src)/lib/attestation/include
incdir += $(srctree)/$(src)/lib/common/include
incdir += $(srctree)/$(src)/lib/debug/include
incdir += $(srctree)/$(src)/lib/gic/include
incdir += $(srctree)/$(src)/lib/mbedtls/include
incdir += $(srctree)/$(src)/lib/measurement/include
incdir += $(srctree)/$(src)/lib/qcbor/include
incdir += $(srctree)/$(src)/lib/realm/include
incdir += $(srctree)/$(src)/lib/rmm_el3_ifc/include
incdir += $(srctree)/$(src)/lib/smc/include
incdir += $(srctree)/$(src)/lib/s2tt/include
incdir += $(srctree)/$(src)/lib/t_cose/include
incdir += $(srctree)/$(src)/lib/timers/include
incdir += $(srctree)/$(src)/lib/xlat/include
incdir += $(srctree)/$(src)/include

ccflags-y += -I$(foreach d, $(incdir), -I$d)
obj-$(CONFIG_KVM) += entry.o handler.o

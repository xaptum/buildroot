################################################################################
#
# hss
#
################################################################################

LINUX_EXTENSIONS += hss
ifeq ($(BR2_CONFIG_SECURITY_SELINUX),y)
define HSS_SELINUX_PATCH
	hss-selinux.patch
endef
endif

define HSS_PREPARE_KERNEL
	$(APPLY_PATCHES) $(LINUX_DIR) $(HSS_DIR)/device/kernel hss-includes.patch hss-socket.patch $(HSS_SELINUX_PATCH)
endef

################################################################################
#
# zeromq
#
################################################################################

ZEROMQ_VERSION = 4.0.4
ZEROMQ_SITE = http://download.zeromq.org/
ZEROMQ_INSTALL_STAGING = YES
ZEROMQ_DEPENDENCIES = util-linux
ZEROMQ_LICENSE = LGPLv3+ with exceptions
ZEROMQ_LICENSE_FILES = COPYING COPYING.LESSER
ZEROMQ_AUTORECONF = YES

ifeq ($(BR2_PACKAGE_ZEROMQ_PGM),y)
	ZEROMQ_DEPENDENCIES += host-pkgconf openpgm
	ZEROMQ_CONF_OPT = --with-system-pgm
endif

$(eval $(autotools-package))

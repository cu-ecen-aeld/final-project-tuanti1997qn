
##############################################################
#
# IMU-READER
#
##############################################################

AHRS_VERSION = '7b334ee81b24295fcdcc1c3965d5c37505489ce3'
AHRS_SITE = 'git@github.com:tuanti1997qn/simple_AHRS.git'
AHRS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AHRS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/AHRS all
endef

define AHRS_INSTALL_TARGET_CMDS
 	$(INSTALL) -m 0755 $(@D)/AHRS/AHRS $(TARGET_DIR)/bin
endef

$(eval $(generic-package))

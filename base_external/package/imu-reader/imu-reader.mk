
##############################################################
#
# IMU-READER
#
##############################################################

IMU_READER_VERSION = '21410f66f783c8ac3a3e2abfa26640fea2aa82a2'
IMU_READER_SITE = 'git@github.com:tuanti1997qn/simple_AHRS.git'
IMU_READER_SITE_METHOD = git
IMU_READER_GIT_SUBMODULES = YES

# add your writer, finder and finder-test utilities/scripts to the installation steps below
IMU_READER_MODULE_SUBDIRS = imu_reader_kernel_space
IMU_READER_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define IMU_READER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/imu_reader_kernel_space/imu_reader_load $(TARGET_DIR)/lib/modules/6.1.46/extra
	$(INSTALL) -m 0755 $(@D)/imu_reader_kernel_space/imu_reader_unload $(TARGET_DIR)/lib/modules/6.1.46/extra
endef


$(eval $(kernel-module))
$(eval $(generic-package))

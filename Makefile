TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = powerd

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoAutoDisableLPM
NoAutoDisableLPM_FILES = Tweak.m
NoAutoDisableLPM_LIBRARIES = substrate
NoAutoDisableLPM_CFLAGS = -Oz
NoAutoDisableLPM_LDFLAGS = -Wl,-dead_strip,-dead_strip_dylibs

include $(THEOS_MAKE_PATH)/tweak.mk

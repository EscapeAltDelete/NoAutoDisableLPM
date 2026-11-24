TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = powerd

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoAutoDisableLPM
NoAutoDisableLPM_FILES = Tweak.x
NoAutoDisableLPM_CFLAGS = -fobjc-arc -Oz
NoAutoDisableLPM_LDFLAGS = -Wl,-dead_strip

include $(THEOS_MAKE_PATH)/tweak.mk

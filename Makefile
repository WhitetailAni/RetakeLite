TARGET := iphone:clang:latest:14.0
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

SDKVERSION = 16.5

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = retakelite

retakelite_PRIVATE_FRAMEWORKS += TextInput TextInputUI
Libraries += TextInput TextInputUI

LDFLAGS += -v

retakelite_FILES = Tweak.x
retakelite_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = RetakeLite_Prefs

RetakeLite_Prefs_FILES = RLRootListController.m
RetakeLite_Prefs_FRAMEWORKS = UIKit
RetakeLite_Prefs_PRIVATE_FRAMEWORKS = Preferences
RetakeLite_Prefs_INSTALL_PATH = /Library/PreferenceBundles
RetakeLite_Prefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

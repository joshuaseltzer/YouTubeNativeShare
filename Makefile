TARGET := iphone:clang:latest:8.0
INSTALL_TARGET_PROCESSES = YouTube

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouTubeNativeShare

YouTubeNativeShare_FILES = Tweak.x
YouTubeNativeShare_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk

# https://github.com/theos/theos/issues/481
SHELL = bash

ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard
SYSROOT = $(THEOS)/sdks/iPhoneOS12.1.sdk


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iconvibe

iconvibe_FILES = Tweak.x
iconvibe_CFLAGS = -fobjc-arc
iconvibe_FRAMEWORKS = CoreTelephony AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk




SUBPROJECTS += iconvibeprefs
include $(THEOS_MAKE_PATH)/aggregate.mk

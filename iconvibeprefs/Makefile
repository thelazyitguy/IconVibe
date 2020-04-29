include $(THEOS)/makefiles/common.mk
SYSROOT = $(THEOS)/sdks/iPhoneOS12.1.sdk

BUNDLE_NAME = IconVibePrefs

IconVibePrefs_FILES = IVPRootListController.m
IconVibePrefs_INSTALL_PATH = /Library/PreferenceBundles
IconVibePrefs_FRAMEWORKS = UIKit
IconVibePrefs_PRIVATE_FRAMEWORKS = Preferences
IconVibePrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/IconVibePrefs.plist$(ECHO_END)

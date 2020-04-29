#import <AudioToolbox/AudioToolbox.h>
#import <AudioToolbox/AudioServices.h>
#define PLIST_PATH @"/var/mobile/Library/Preferences/com.thelazyitguy.iconvibeprefs.plist"

NSInteger prefsVariable;
static void loadPrefs() {
	NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:PLIST_PATH];
	prefsVariable = [[prefs objectForKey:@"TapticStrength"] intValue];
}

%hook SBIconController

-(void)iconManager:(id)arg1 launchIconForIconView:(id)arg2  
	{ 
		if(prefsVariable == 1){
			AudioServicesPlaySystemSound(1519);
		}else if(prefsVariable == 2){
			AudioServicesPlaySystemSound(1520);
		}
		%orig; 
	}
%end

%ctor{
    loadPrefs();
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.thelazyitguy.iconvibeprefs.settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
}
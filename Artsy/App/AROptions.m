#import "AROptions.h"

NSString *const AROptionsLoadingScreenAlpha = @"Loading screens are transparent";
NSString *const AROptionsUseVCR = @"Use offline recording";
NSString *const AROptionsSettingsMenu = @"Enable user settings";
NSString *const AROptionsTappingPartnerSendsToPartner = @"Partner name in feed goes to partner";
NSString *const AROptionsShowAnalyticsOnScreen = @"AROptionsShowAnalyticsOnScreen";
NSString *const AROptionsUseModernGeneVC = @"Use ModernGeneViewController";
NSString *const AROptionsDisableNativeLiveAuctions = @"Disable native live auctions";
NSString *const AROptionsStagingReactEnv = @"Use Staging React ENV";


@implementation AROptions

+ (NSArray *)labsOptions
{
    return @[
        AROptionsUseVCR,
        AROptionsSettingsMenu,
        AROptionsTappingPartnerSendsToPartner,
        AROptionsUseModernGeneVC,
        AROptionsDisableNativeLiveAuctions,
    ];
}

+ (NSArray *)labsOptionsThatRequireRestart
{
    return @[
        AROptionsDisableNativeLiveAuctions,
    ];
}

+ (BOOL)boolForOption:(NSString *)option
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:option];
}

+ (void)setBool:(BOOL)value forOption:(NSString *)option
{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:option];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end

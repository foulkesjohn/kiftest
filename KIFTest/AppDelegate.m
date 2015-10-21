#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:[self userNotificationTypes]
                                                                           categories:nil];
  [application registerUserNotificationSettings:settings];
  [application registerForRemoteNotifications];
  return YES;
}

- (UIUserNotificationType)userNotificationTypes
{
  return (UIUserNotificationTypeAlert |
          UIUserNotificationTypeBadge |
          UIUserNotificationTypeSound);
}

@end
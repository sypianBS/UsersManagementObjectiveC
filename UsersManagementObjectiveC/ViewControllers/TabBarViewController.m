//
//  TabBarViewController.m
//  UsersManagementObjectiveC
//
//  Created by Beniamin on 25.06.22.
//

#import "TabBarViewController.h"
#import "UsersViewController.h"
#import "FavoritesViewController.h"
#import "SettingsViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIViewController *usersViewController = [[UsersViewController alloc] init];
    UIViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    UIViewController *settingsViewController = [[SettingsViewController alloc] init];
    
    UIImage *usersTabImage = [UIImage systemImageNamed: @"person"];
    UIImage *favoritesTabImage = [UIImage systemImageNamed: @"star"];
    UIImage *settingsTabImage = [UIImage systemImageNamed: @"gearshape"];
    
    usersViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Users" image: usersTabImage tag: 0];
    favoritesViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Favorites" image: favoritesTabImage tag: 1];
    settingsViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Settings" image: settingsTabImage tag: 2];
    
    self.viewControllers = [NSArray arrayWithObjects: favoritesViewController, usersViewController, settingsViewController, nil];
    self.selectedIndex = 1; //middle tab
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

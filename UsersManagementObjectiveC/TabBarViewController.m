//
//  TabBarViewController.m
//  UsersManagementObjectiveC
//
//  Created by Beniamin on 25.06.22.
//

#import "TabBarViewController.h"
#import "ViewController.h"
#import "FavoritesViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIViewController *usersViewController = [[ViewController alloc] init];
    UIImage *usersTabImage = [UIImage systemImageNamed: @"person"];
    usersViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Users" image: usersTabImage tag: 0];
    
    UIViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    UIImage *favoritesTabImage = [UIImage systemImageNamed: @"star"];
    favoritesViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle: @"Favorites" image: favoritesTabImage tag: 1];
    self.viewControllers = [NSArray arrayWithObjects: usersViewController, favoritesViewController, nil];
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

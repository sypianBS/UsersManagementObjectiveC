//
//  UsersViewController.h
//  UsersManagementObjectiveC
//
//  Created by Beniamin on 25.06.22.
//

#import <UIKit/UIKit.h>

@interface UsersViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>


- (void) setupTableView;

@property NSArray *namesArray;

@end


//
//  UsersViewController.m
//  UsersManagementObjectiveC
//
//  Created by Beniamin on 25.06.22.
//

#import "UsersViewController.h"

@interface UsersViewController ()

@end

@implementation UsersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    _namesArray = [NSArray arrayWithObjects:@"John",@"Chris",@"Mary",nil];
    [self setupTableView];
}

- (void)setupTableView {
    UITableView *usersTableView = [[UITableView alloc] init];
    usersTableView.frame = self.view.frame;
    usersTableView.delegate = self;
    usersTableView.dataSource = self;
    [usersTableView registerClass: [UITableViewCell class] forCellReuseIdentifier:@"UserCell"];
    [self.view addSubview: usersTableView];
}

//delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _namesArray.count;
}

//data source
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"UserCell";
      UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier   forIndexPath:indexPath] ;

      if (cell == nil)
      {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
      }
      cell.textLabel.text=[_namesArray objectAtIndex:indexPath.row];
      return cell;
}

@end

//
//  NKIVersionsTableViewController.m
//  IntroToObjC
//
//  Created by Niranjan Kumar on 1/20/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "NKIVersionsTableViewController.h"
#import "NKIVersionController.h"
#import "NKIVersion.h"

@interface NKIVersionsTableViewController ()

@end

@implementation NKIVersionsTableViewController

// Called when we create a VieController from a Storyboard
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        _controller = [[NKIVersionController alloc]init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.controller.versions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VersionCell" forIndexPath:indexPath];
    
//    NKIVersion *version = self.controller.versions
    NKIVersion *version = [self.controller.versions objectAtIndex:indexPath.row]; // ESC, type method name, ] (for suggestions from autocomplete)
//    NKIVersion *version = [self.controller.versions objectAtIndex:indexPath.row]; // ]

    cell.textLabel.text = version.name;
    cell.detailTextLabel.text = version.releaseDate;
    
    return cell;
}


@end

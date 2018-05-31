//
//  SNViewController.m
//  MasonryHidden
//
//  Created by sunny on 05/25/2018.
//  Copyright (c) 2018 sunny. All rights reserved.
//

#import "SNViewController.h"
#import "SNMasonryHiddenViewController.h"
#import "SNMaonryUpdateContriantViewController.h"
#import "SNMasonryContraintActiveViewController.h"

@interface SNViewController () {
    NSArray <Item *>*itemArray;
}
@end

@implementation SNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Item *item0 = [[Item alloc] init];
    item0.title = @"MasonryHidden";
    item0.pushVCClass = [SNMasonryHiddenViewController class];
    
    Item *item1 = [[Item alloc] init];
    item1.title = @"MaonryUpdateContriant";
    item1.pushVCClass = [SNMaonryUpdateContriantViewController class];

    Item *item2 = [[Item alloc] init];
    item2.title = @"MasonryContraintActive";
    item2.pushVCClass = [SNMasonryContraintActiveViewController class];

    itemArray = @[item0, item1, item2];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    Item *item = [itemArray objectAtIndex:indexPath.row];
    cell.textLabel.text = item.title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Item *item = [itemArray objectAtIndex:indexPath.row];
    UIViewController *vc = [[item.pushVCClass alloc] init];
    vc.title = item.title;
    [self.navigationController pushViewController:vc animated:true] ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

@implementation Item
@end

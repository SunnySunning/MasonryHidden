//
//  SNViewController.h
//  MasonryHidden
//
//  Created by sunny on 05/25/2018.
//  Copyright (c) 2018 sunny. All rights reserved.
//

@import UIKit;

@interface SNViewController : UITableViewController

@end

@interface Item : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) Class pushVCClass;

@end

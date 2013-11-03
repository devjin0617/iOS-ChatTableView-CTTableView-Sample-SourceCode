//
//  ViewController.h
//  ChatTableViewSample
//
//  Created by cheong jin kim on 08/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTTableView.h"

@class CTTableView;

@interface ViewController : UIViewController <CTTableViewDelegate>


@property(nonatomic, strong) IBOutlet CTTableView *cTableView;


@end
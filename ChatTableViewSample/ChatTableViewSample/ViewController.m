//
//  ViewController.m
//  ChatTableViewSample
//
//  Created by cheong jin kim on 08/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CTTableView.h"
#import "CTDataModel.h"

@interface ViewController ()

@end

@implementation ViewController
{
    IBOutlet CTTableView *cTableView;
}
@synthesize cTableView;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


    cTableView.delegateCustom = self;

    [cTableView initTableView];



}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (NSArray *)getData {


    NSMutableArray *dataArray = [[NSMutableArray alloc] init];

    CTDataModel *chatData = [[CTDataModel alloc]init];

    chatData.cUserName = @"puding1507";
    chatData.cContent = @"동해물과 백두산이 마르고 닳도록 하나님이 보우하사 우리나라 만세";
    chatData.isUserName = YES;
    [dataArray addObject:chatData];

    chatData = [[CTDataModel alloc]init];
    chatData.cUserName = @"puding1507";
    chatData.cContent = @"무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세 울랄라 울랄라";
    chatData.isUserName = NO;
    [dataArray addObject:chatData];

    chatData = [[CTDataModel alloc]init];
    chatData.cUserName = @"puding1507";
    chatData.cContent = @"Hello World!";
    chatData.isUserName = NO;
    [dataArray addObject:chatData];

    chatData = [[CTDataModel alloc]init];
    chatData.cUserName = @"puding1507";
    chatData.cContent = @"하이하이";
    chatData.isUserName = YES;
    [dataArray addObject:chatData];

    chatData = [[CTDataModel alloc]init];
    chatData.cUserName = @"puding1507";
    chatData.cContent = @"안녕하세요>_<??";
    chatData.isUserName = NO;
    [dataArray addObject:chatData];

    chatData = [[CTDataModel alloc]init];
    chatData.cUserName = @"puding1507";
    chatData.cContent = @"뿌잉뿌잉 아싸리랄라 울라라쑝숑숑!!!";
    chatData.isUserName = YES;
    [dataArray addObject:chatData];

    chatData = [[CTDataModel alloc]init];
    chatData.cUserName = @"puding1507";
    chatData.cContent = @"오예";
    chatData.isUserName = NO;
    [dataArray addObject:chatData];


    return dataArray;


}




@end
//
//  CTTableView.h
//  ChatTableViewSample
//
//  Created by cheong jin kim on 08/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//




@protocol CTTableViewDelegate

@required
-(NSArray *)getData;
-(void)setHeight;


@optional

@end



@interface CTTableView : UITableView <UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, strong) NSArray *data;
@property(nonatomic, strong) id <CTTableViewDelegate> delegateCustom;



-(void)initTableView;
-(CGSize)dataSize:(NSString *)string;

@end

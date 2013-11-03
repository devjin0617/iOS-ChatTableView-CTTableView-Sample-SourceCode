//
//  CTDataModel.h
//  ChatTableViewSample
//
//  Created by cheong jin kim on 08/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



@interface CTDataModel : NSObject
@property(nonatomic, copy) NSString *cUserName;
@property(nonatomic, copy) NSString *cContent;
@property(nonatomic, strong) UIImage *cUserImage;
@property(nonatomic, assign) BOOL isUserName;


@end

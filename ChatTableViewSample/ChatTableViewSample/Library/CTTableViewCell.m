//
//  CTTableViewCell.m
//  ChatTableViewSample
//
//  Created by cheong jin kim on 08/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CTTableViewCell.h"

@implementation CTTableViewCell
{
    IBOutlet UILabel *cNameLabel;
    IBOutlet UITextView *cContentTextView;

    IBOutlet UIImageView *cUserImageView;
    IBOutlet UIImageView *cBubbleBackgroundImageView;
}
@synthesize cNameLabel;
@synthesize cContentTextView;
@synthesize cUserImageView;
@synthesize cBubbleBackgroundImageView;


@end

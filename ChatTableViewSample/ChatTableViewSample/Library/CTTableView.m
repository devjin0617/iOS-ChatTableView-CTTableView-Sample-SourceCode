//
//  CTTableView.m
//  ChatTableViewSample
//
//  Created by cheong jin kim on 08/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import "CTTableView.h"
#import "CTTableViewCell.h"
#import "CTDataModel.h"

#define NAME_CONTENT_SIZE                                       25.f     // Window 시작부터 Name Label 크기까지의 높이
#define CONTENT_WIDTH                                           180.f    // 내용 가로 사이즈
#define CONTENT_START                                           15.f     // 이름 끝나고 부터 ~~  내용 시작위치 Height 값


#define BUBBLE_IMAGE_HEIGHT                                     10.f     // 버블이미지 - 내용 = 둘의 차이값
#define BUBBLE_WIDTH                                            190.f    // 버블이미지 가로 사이즈
#define BUBBLE_WIDTH_SPACE                                      70.f     // 버블이미지 여유공간(가로사이즈)


#define CELL_HEIGHT             NAME_CONTENT_SIZE+CONTENT_START+10.f     // CELL 전체 높이 (CONTENT 높이는 제외)


#define ME_RIGHT_WIDTH_SPACE                                    55.0f    // 오른쪽 여유공간 (가로사이즈)






@implementation CTTableView
{
    id<CTTableViewDelegate> delegateCustom;


    NSArray *data;
}
@synthesize data;
@synthesize delegateCustom;



-(void)initTableView
{
    super.delegate = self;
    super.dataSource = self;





}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    CTDataModel *rowData = [data objectAtIndex:[indexPath row]];
    CGSize dataSize = [self dataSize:rowData.cContent];


    return dataSize.height + CELL_HEIGHT;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //return [super tableView:tableView numberOfRowsInSection:section];

    if (data == nil)
    {
        data = delegateCustom.getData;

    }



    return [data count];

}

- (CGSize)dataSize:(NSString *)string {
    CGSize maxSize = CGSizeMake(170.0, 999.0);

    UIFont *font = [UIFont fontWithName:@"Helvetica" size:14];
    CGSize dataHeight = [string sizeWithFont:font constrainedToSize:maxSize lineBreakMode:UILineBreakModeCharacterWrap];

    return CGSizeMake(dataHeight.width, dataHeight.height+15);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //return [super tableView:tableView cellForRowAtIndexPath:indexPath];

    NSArray *cellArray= [[NSBundle mainBundle] loadNibNamed:@"IBCTTableViewCell" owner:self options:nil];
    CTTableViewCell *cell = nil;




    CTDataModel *rowData = [data objectAtIndex:[indexPath row]];
    CGSize dataSize = [self dataSize:rowData.cContent];


    CGSize windowSize = self.frame.size;

    if ( rowData.isUserName )
    {
        cell = [cellArray objectAtIndex:1];

        cell.cBubbleBackgroundImageView.image = [[UIImage imageNamed:@"me_bubbleBox.png"] stretchableImageWithLeftCapWidth:20 topCapHeight:16];
        cell.cBubbleBackgroundImageView.frame = CGRectMake(
                windowSize.width - ME_RIGHT_WIDTH_SPACE - MAX(dataSize.width, [self dataSize:cell.cNameLabel.text].width + BUBBLE_WIDTH_SPACE),
                cell.cBubbleBackgroundImageView.frame.origin.y,
                MAX(dataSize.width, [self dataSize:cell.cNameLabel.text].width + BUBBLE_WIDTH_SPACE)+5,
                dataSize.height + NAME_CONTENT_SIZE +BUBBLE_IMAGE_HEIGHT);

        cell.cContentTextView.frame = CGRectMake(
                windowSize.width - ME_RIGHT_WIDTH_SPACE - MAX(dataSize.width, [self dataSize:cell.cNameLabel.text].width + BUBBLE_WIDTH_SPACE),
                cell.cContentTextView.frame.origin.y,
                MAX(dataSize.width, [self dataSize:cell.cNameLabel.text].width + BUBBLE_WIDTH_SPACE) - 10.0,
                dataSize.height + NAME_CONTENT_SIZE);
    }
    else
    {
        cell = [cellArray objectAtIndex:0];

        cell.cBubbleBackgroundImageView.image = [[UIImage imageNamed:@"friend_bubbleBox.png"] stretchableImageWithLeftCapWidth:20 topCapHeight:16];
        cell.cBubbleBackgroundImageView.frame = CGRectMake(
                cell.cBubbleBackgroundImageView.frame.origin.x,
                cell.cBubbleBackgroundImageView.frame.origin.y,
                MAX(dataSize.width, [self dataSize:cell.cNameLabel.text].width + BUBBLE_WIDTH_SPACE)+5,
                dataSize.height + NAME_CONTENT_SIZE +BUBBLE_IMAGE_HEIGHT);

        cell.cContentTextView.frame = CGRectMake(
                cell.cContentTextView.frame.origin.x,
                cell.cContentTextView.frame.origin.y,
                MAX(dataSize.width, [self dataSize:cell.cNameLabel.text].width + BUBBLE_WIDTH_SPACE) - 10.0,
                dataSize.height + NAME_CONTENT_SIZE);
    }



    cell.cNameLabel.text = rowData.cUserName;
    cell.cContentTextView.text = rowData.cContent;
    cell.cUserImageView.image = [UIImage imageNamed:@"Icon_ChatFaceGirl.png"];


    return cell;

}









@end

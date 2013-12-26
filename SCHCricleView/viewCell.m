//
//  viewCell.m
//  SCHCricleView
//
//  Created by 沈 晨豪 on 12-11-11.
//  Copyright (c) 2012年 sch. All rights reserved.
//

#import "viewCell.h"

@interface viewCell ()

@end

@implementation viewCell

@synthesize image_view = _image_view;

#pragma mark -
#pragma mark - dealloc 
- (void)dealloc
{
    [_image_view release], _image_view = nil;
    
    [super dealloc];
}
@end

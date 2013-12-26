//
//  viewCell.h
//  SCHCricleView
//
//  Created by 沈 晨豪 on 12-11-11.
//  Copyright (c) 2012年 sch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCHCircleViewCell.h"
@interface viewCell : SCHCircleViewCell
{
    UIImageView *_image_view;
}
@property (nonatomic,retain) IBOutlet UIImageView *image_view;
@end

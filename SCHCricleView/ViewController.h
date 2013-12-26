//
//  ViewController.h
//  SCHCricleView
//
//  Created by sch on 12-11-8.
//  Copyright (c) 2012年 sch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCHCircleView.h"
@interface ViewController : UIViewController<SCHCircleViewDataSource,SCHCircleViewDelegate>
{
    SCHCircleView   *_circle_view;
    
    NSMutableArray  *_icon_array;
    

}

@property (nonatomic,retain) IBOutlet SCHCircleView *circle_view;


- (IBAction)pressed:(id)sender;


@end

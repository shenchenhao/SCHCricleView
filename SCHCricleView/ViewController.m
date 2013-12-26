//
//  ViewController.m
//  SCHCricleView
//
//  Created by sch on 12-11-8.
//  Copyright (c) 2012年 sch. All rights reserved.
//

#import "ViewController.h"
#import "viewCell.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

@synthesize circle_view = _circle_view;



- (IBAction)pressed:(id)sender
{
    [_circle_view reloadData];
}

#pragma mark -
#pragma mark - 初始化

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        _icon_array = [[NSMutableArray alloc] init];
        [_icon_array addObject:[UIImage imageNamed:@"1.png"]];
        [_icon_array addObject:[UIImage imageNamed:@"2.png"]];
        [_icon_array addObject:[UIImage imageNamed:@"3.png"]];
        [_icon_array addObject:[UIImage imageNamed:@"4.png"]];
        [_icon_array addObject:[UIImage imageNamed:@"5.png"]];
        [_icon_array addObject:[UIImage imageNamed:@"6.png"]];
   
    }
    
    return self;
}

#pragma mark -
#pragma mark - view 
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _circle_view.circle_view_data_source = self;
    _circle_view.circle_view_delegate    = self;
    _circle_view.show_circle_style       = SChShowCircleWinding;
    [_circle_view reloadData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - SCHCircleViewDataSource

//- (CGFloat)dragSensitivityOfCircleViewCell:(SCHCircleView *)circle_view
//{
//    return 1;
//}
//
///*目前还有问题*/
//- (CGFloat)deviationRadianOfCircleView:(SCHCircleView *)circle_view
//{
//    return M_PI;
//}

- (CGPoint)centerOfCircleView:(SCHCircleView *)circle_view
{
    return CGPointMake(160.0f, 150.0f);
}

- (NSInteger)numberOfCellInCircleView:(SCHCircleView *)circle_view
{
    return _icon_array.count;
}

- (SCHCircleViewCell *)circleView:(SCHCircleView *)circle_view cellAtIndex:(NSInteger)index_circle_cell
{
    viewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"viewCell" owner:nil options:nil] lastObject];
    
    [cell.image_view setImage:[_icon_array objectAtIndex:index_circle_cell]];
    
    return cell;
}

#pragma mark - 
#pragma mark - SCHCircleViewDelegate
- (void)touchEndCircleViewCell:(SCHCircleViewCell *)cell indexOfCircleViewCell:(NSInteger)index
{
    NSLog(@"%d",index);
}

#pragma mark -
#pragma mark - dealloc 
- (void)dealloc
{
    [_icon_array  release], _icon_array  = nil;
    
    [_circle_view release], _circle_view = nil;
    
    [super dealloc];
}
@end

//
//  DetailViewController.h
//  MATEUSZ PIS
//
//  Created by Matt on 10/11/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{

IBOutlet UIButton *mainImageView;
IBOutlet UIButton *button1;
IBOutlet UIButton *button2;
IBOutlet UIButton *button3;
IBOutlet UIButton *button4;
IBOutlet UIButton *button5;
IBOutlet UIButton *button6;
IBOutlet UIButton *button7;
IBOutlet UIButton *button8;
IBOutlet UILabel *detailLabel;
}
@property (nonatomic,weak)IBOutlet UIScrollView *iconScroll;

-(IBAction)button1:(id)sender;
-(IBAction)button2:(id)sender;
-(IBAction)button3:(id)sender;
-(IBAction)button4:(id)sender;
-(IBAction)button5:(id)sender;
-(IBAction)button6:(id)sender;
-(IBAction)button7:(id)sender;
-(IBAction)button8:(id)sender;

@end

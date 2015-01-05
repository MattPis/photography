//
//  DetailViewController.m
//  MATEUSZ PIS
//
//  Created by Matt on 10/11/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import "DetailViewController.h"
#import "introViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize iconScroll;

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    iconScroll.scrollEnabled=YES;
    iconScroll.bounces=YES;
    [iconScroll setContentSize:CGSizeMake(750,77)];
    [[mainImageView imageView] setContentMode:UIViewContentModeScaleAspectFit];

     [[button1 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    [[button2 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    [[button3 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    [[button4 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    [[button5 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    [[button6 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    [[button7 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    [[button8 imageView] setContentMode:UIViewContentModeScaleAspectFill];
    
    
    
    [button1 setImage:[imagesArray objectAtIndex:x] forState:UIControlStateNormal ];
    [button2 setImage:[imagesArray objectAtIndex:x+1] forState:UIControlStateNormal ];
    [button3 setImage:[imagesArray objectAtIndex:x+2] forState:UIControlStateNormal ];
    [button4 setImage:[imagesArray objectAtIndex:x+3] forState:UIControlStateNormal ];
    [button5 setImage:[imagesArray objectAtIndex:x+4] forState:UIControlStateNormal ];
    [button6 setImage:[imagesArray objectAtIndex:x+5] forState:UIControlStateNormal ];
    [button7 setImage:[imagesArray objectAtIndex:x+6] forState:UIControlStateNormal ];
    [button8 setImage:[imagesArray objectAtIndex:x+7] forState:UIControlStateNormal ];
    
    detailLabel.text = [NSString stringWithString:detailString];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)button1:(id)sender{
    currentImage = x;
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    
}
-(IBAction)button2:(id)sender{
    currentImage = x+1;
    
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    
}
-(IBAction)button3:(id)sender{
    currentImage = x+2;
    
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    
}
-(IBAction)button4:(id)sender{
    currentImage = x+3;
    
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];

    
}
-(IBAction)button5:(id)sender{
    currentImage = x+4;
    
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    
}
-(IBAction)button6:(id)sender{
    currentImage = x+5;
    
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    
}
-(IBAction)button7:(id)sender{
    currentImage = x+6;
    
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    
}
-(IBAction)button8:(id)sender{
    currentImage = x+7;
    
    [mainImageView setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal ];
    
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

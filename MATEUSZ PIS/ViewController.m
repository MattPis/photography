//
//  ViewController.m
//  MATEUSZ PIS
//
//  Created by Matt on 10/9/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import "ViewController.h"
#import "introViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    image1.image = [imagesArray objectAtIndex:0];
    image2.image = [imagesArray objectAtIndex:1];
    image3.image = [imagesArray objectAtIndex:2];
    image4.image = [imagesArray objectAtIndex:3];
    image5.image = [imagesArray objectAtIndex:11];
    image6.image = [imagesArray objectAtIndex:5];
    image7.image = [imagesArray objectAtIndex:6];
    image8.image = [imagesArray objectAtIndex:7];
    image9.image = [imagesArray objectAtIndex:4];
    
    
    
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self swichBackgroundImage:self];
}
-(IBAction)swichBackgroundImage:(id)sender{
    if(image2.hidden==YES){
        
        
        int index = arc4random()%[imagesArray count ];
        backgroundImage.image = [imagesArray objectAtIndex:index];
        
        [self performSelector:@selector(rotate:) withObject:nil afterDelay:5];
    }
    else{
        [self performSelector:@selector(rotate:) withObject:nil afterDelay:5];
        
    }
    
}

-(IBAction)rotate:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view1 cache:YES];
    [UIView commitAnimations];
    if (image1.hidden == NO) {
        image1.hidden= YES;
        view1.hidden= YES;
    }
    else{
        image1.hidden= NO;
        view1.hidden= NO;
    }
    
    [self rotate2:self];
    
}
-(IBAction)rotate2:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:.25];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view2 cache:YES];
    [UIView commitAnimations];
    if (image2.hidden == NO) {
        image2.hidden= YES;
        view2.hidden= YES;
    }
    else{
        image2.hidden= NO;
        view2.hidden= NO;
    }
    [self rotate3:self];
    
    
}
-(IBAction)rotate3:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:.5];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view3 cache:YES];
    [UIView commitAnimations];
    if (image3.hidden == NO) {
        image3.hidden= YES;
        view3.hidden= YES;
    }
    else{
        image3.hidden= NO;
        view3.hidden= NO;
    }
    [self rotate4:self];
    
    
}
-(IBAction)rotate4:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:.25];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view4 cache:YES];
    [UIView commitAnimations];
    if (image4.hidden == NO) {
        image4.hidden= YES;
        view4.hidden= YES;
    }
    else{
        image4.hidden= NO;
        view4.hidden= NO;
    }
    
    [self rotate5:self];
    
}
-(IBAction)rotate5:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:.5];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view5 cache:YES];
    [UIView commitAnimations];
    if (image5.hidden == NO) {
        image5.hidden= YES;
        view5.hidden= YES;
    }
    else{
        image5.hidden= NO;
        view5.hidden= NO;
    }
    
    [self rotate6:self];
    
}
-(IBAction)rotate6:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:.75];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view6 cache:YES];
    [UIView commitAnimations];
    if (image6.hidden == NO) {
        image6.hidden= YES;
        view6.hidden= YES;
    }
    else{
        image6.hidden= NO;
        view6.hidden= NO;
    }
    
    [self rotate7:self];
    
}
-(IBAction)rotate7:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:.5];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view7 cache:YES];
    [UIView commitAnimations];
    if (image7.hidden == NO) {
        image7.hidden= YES;
        view7.hidden= YES;
    }
    else{
        image7.hidden= NO;
        view7.hidden= NO;
    }
    [self rotate8:self];
    
}
-(IBAction)rotate8:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:.75];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view8 cache:YES];
    [UIView commitAnimations];
    if (image8.hidden == NO) {
        image8.hidden= YES;
        view8.hidden= YES;
    }
    else{
        image8.hidden= NO;
        view8.hidden= NO;
    }
    
    [self rotate9:self];
    
}
-(IBAction)rotate9:(id)sender{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [UIView setAnimationDelay:1];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:view9 cache:YES];
    [UIView commitAnimations];
    if (image9.hidden == NO) {
        image9.hidden= YES;
        view9.hidden= YES;
    }
    else{
        image9.hidden= NO;
        view9.hidden= NO;
    }
    
    [self performSelector:@selector(swichBackgroundImage:) withObject:nil afterDelay:0];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)detailSelectorPortraits:(id)sender{
    detailString=@"PORTRAITS";
    x=0;
    currentImage = 0;
}
-(IBAction)detailSelectorCity :(id)sender{
    detailString=@"CITY";
    x=8;
    currentImage=8;
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

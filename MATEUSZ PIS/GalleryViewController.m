//
//  GalleryViewController.m
//  MATEUSZ PIS
//
//  Created by Matt on 10/13/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import "GalleryViewController.h"
#import "introViewController.h"

@interface GalleryViewController ()

@end

@implementation GalleryViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [mainImage setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal];
    [mainImage.imageView setContentMode:UIViewContentModeScaleAspectFit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)leftSwipe:(UISwipeGestureRecognizer *)sender {
    if ((currentImage==7)|| (currentImage ==15)) {
        NSLog(@"end of gallery");
    }
    else{
           currentImage ++;
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.3];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        [UIView commitAnimations];
    
    }
    [mainImage setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal];
}

- (IBAction)rightSwipe:(UISwipeGestureRecognizer *)sender {
    if ((currentImage==0)||(currentImage==8)) {
        NSLog(@"begining of gallery");
    }
              else  {
            currentImage --;
                  [UIView beginAnimations:nil context:NULL];
                  [UIView setAnimationDuration:.3];
                  [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
                  [UIView commitAnimations];

              }
    
    [mainImage setImage:[imagesArray objectAtIndex:currentImage] forState:UIControlStateNormal];}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end

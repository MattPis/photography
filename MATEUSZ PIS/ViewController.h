//
//  ViewController.h
//  MATEUSZ PIS
//
//  Created by Matt on 10/9/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    
    IBOutlet UIImageView *backgroundImage;
    
    NSMutableArray*dataImagesArray;
    
    IBOutlet UIImageView *image1;
    IBOutlet UIImageView *image2;
    IBOutlet UIImageView *image3;
    IBOutlet UIImageView *image4;
    IBOutlet UIImageView *image5;
    IBOutlet UIImageView *image6;
    IBOutlet UIImageView *image7;
    IBOutlet UIImageView *image8;
    IBOutlet UIImageView *image9;
    
    
    IBOutlet UIView *view1;
    IBOutlet UIView *view2;
    IBOutlet UIView *view3;
    IBOutlet UIView *view4;
    IBOutlet UIView *view5;
    IBOutlet UIView *view6;
    IBOutlet UIView *view7;
    IBOutlet UIView *view8;
    IBOutlet UIView *view9;

  
}

-(IBAction)swichBackgroundImage:(id)sender;
-(IBAction)rotate:(id)sender;
-(IBAction)rotate2:(id)sender;
-(IBAction)rotate3:(id)sender;
-(IBAction)rotate4:(id)sender;
-(IBAction)rotate5:(id)sender;
-(IBAction)rotate6:(id)sender;
-(IBAction)rotate7:(id)sender;
-(IBAction)rotate8:(id)sender;
-(IBAction)rotate9:(id)sender;
-(IBAction)detailSelectorPortraits:(id)sender;
-(IBAction)detailSelectorCity:(id)sender;


@end


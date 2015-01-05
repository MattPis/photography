//
//  GalleryViewController.h
//  MATEUSZ PIS
//
//  Created by Matt on 10/13/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GalleryViewController : UIViewController{
    IBOutlet UIButton *mainImage;
}
- (IBAction)leftSwipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)rightSwipe:(UISwipeGestureRecognizer *)sender;

@end

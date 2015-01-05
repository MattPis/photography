//
//  ContactViewController.h
//  MATEUSZ PIS
//
//  Created by Matt on 10/12/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactViewController : UIViewController{
    IBOutlet UIButton *backButton;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label1;
}
-(IBAction)call :(id)sender;
-(IBAction)facebook:(id)sender;
@end

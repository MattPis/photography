//
//  ContactViewController.m
//  MATEUSZ PIS
//
//  Created by Matt on 10/12/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import "ContactViewController.h"
@interface ContactViewController ()

@end

@implementation ContactViewController

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}


- (void)viewDidLoad {
    [super viewDidLoad];


    if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad )
    {
        label1.hidden=YES;
        backButton.hidden=YES;
        label2.hidden=YES;
        self.preferredContentSize = CGSizeMake(400.0, 600.0);

    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)call:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:7737873052"]];
    
}
-(IBAction)facebook:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/pages/Mateusz-Pis-Photography/162736510458127"]];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

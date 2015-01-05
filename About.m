//
//  About.m
//  MATEUSZ PIS
//
//  Created by Matt on 11/5/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import "About.h"

@interface About ()

@end

@implementation About

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

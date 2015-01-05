//
//  introViewController.h
//  MATEUSZ PIS
//
//  Created by Matt on 10/9/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import <UIKit/UIKit.h>

NSMutableArray * imagesArray;
NSString *detailString;
int x; //array int;
int currentImage;

@interface introViewController : UIViewController{
    int i;
    NSMutableArray *urlArray;
    UIImage *imageArray;
    IBOutlet UIProgressView *progressView;
    IBOutlet UILabel *count;
    NSURLConnection *urlConnection;
    NSMutableData *urlData;
}
@property (nonatomic, retain) NSMutableArray *urlArray;
@property (nonatomic, retain) NSMutableData *urlData;
@property (nonatomic, retain)NSURLConnection *urlConnection;


-(IBAction)switchView:(id)sender;
-(IBAction)connectionRun:(id)sender;
-(IBAction)urlArrayAdd:(id)sender;
@end

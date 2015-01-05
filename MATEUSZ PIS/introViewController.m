//
//  introViewController.m
//  MATEUSZ PIS
//
//  Created by Matt on 10/9/14.
//  Copyright (c) 2014 Matt. All rights reserved.
//

#import "introViewController.h"

@interface introViewController ()

@end

@implementation introViewController
@synthesize urlArray;
@synthesize urlData, urlConnection;

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

-(IBAction)switchView:(id) sender;{
    UIViewController *new =[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:new animated:NO completion:nil];
    
}


-(IBAction)connectionRun:(id)sender
{
    
    if (i<16)
    {
        NSMutableData *data = [[NSMutableData alloc]init];
        self.urlData=data;
        NSURL *url = [NSURL URLWithString:[urlArray objectAtIndex:i]];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSURLConnection *connection= [[NSURLConnection alloc]initWithRequest:request delegate:self ];
        self.urlConnection = connection;
        [self.urlConnection start];
        
        
        
        //  count.text = [NSString stringWithFormat:@"%d", i];
        
        
        
        
        
        
    }
    else
    {
        [self switchView: self];
        
    }
}
-(void)viewDidLoad
{
    i=0;
    
    
}





- (void)viewDidAppear:(BOOL)animated
{
    urlArray =[[NSMutableArray alloc]init];
    imagesArray=[[NSMutableArray alloc]init];
    [self urlArrayAdd:self];
    [self connectionRun:self];
    
    
    
}

-(void)connection:(NSURLConnection*)connection didReceiveData:(NSData *)data{
    [self.urlData appendData:data];
}

-(void)connection:(NSURLConnection*)connection didFailWithError:(NSError *)error{
    urlData=nil;
    count.text=@"CONNECTION ERROR. RETRY";
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    imageArray = [UIImage imageWithData:urlData];
    
    
    progressView.progress +=.0625;
    i++;
    
    [imagesArray addObject:imageArray];
    
    [self connectionRun:self];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)urlArrayAdd:(id)sender
{
   
    [urlArray addObject:@"http://th06.deviantart.net/fs71/PRE/i/2014/235/e/4/heal_by_mateuszp-d7wejg2.jpg"];
    [urlArray addObject:@"http://th01.deviantart.net/fs70/PRE/i/2014/235/3/7/kin_by_mateuszp-d7wehuo.jpg"];
    [urlArray addObject:@"http://fc07.deviantart.net/fs70/i/2014/235/9/9/nat_by_mateuszp-d7wejti.jpg"];
    [urlArray addObject:@"http://fc03.deviantart.net/fs71/i/2012/023/5/e/fall_by_mateuszp-d4ncbsz.jpg"];
    [urlArray addObject:@"http://fc03.deviantart.net/fs71/f/2014/235/3/8/img_0344male_by_mateuszp-d7wek4y.jpg"];
    [urlArray addObject:@"http://fc00.deviantart.net/fs71/f/2014/235/a/c/matimaleni8_by_mateuszp-d7wek14.jpg"];
    [urlArray addObject:@"http://fc01.deviantart.net/fs43/f/2009/097/3/d/Story_by_mateuszp.jpg"];
     [urlArray addObject:@"http://fc01.deviantart.net/fs71/f/2014/235/d/0/dawid_who__by_mateuszp-d7wedti.jpg"];
    [urlArray addObject:@"http://fc09.deviantart.net/fs31/f/2008/213/2/d/____by_mateuszp.jpg"];
    [urlArray addObject:@"http://fc08.deviantart.net/fs71/f/2014/235/9/a/indstr_by_mateuszp-d7wejnj.jpg"];
    [urlArray addObject:@"http://fc06.deviantart.net/fs46/i/2009/199/9/6/SeaSide_by_mateuszp.jpg"];
    [urlArray addObject:@"http://fc01.deviantart.net/fs71/f/2009/346/c/4/still_by_mateuszp.jpg"];
    [urlArray addObject:@"http://fc02.deviantart.net/fs70/i/2014/235/b/f/13_by_mateuszp-d7wekhe.jpg"];

    [urlArray addObject:@"http://fc02.deviantart.net/fs70/f/2014/303/1/e/1916755_211881587552_270079_n_by_mateuszp-d84ptd9.jpg"];
    [urlArray addObject:@"http://fc09.deviantart.net/fs71/f/2014/298/b/d/chicago_by_mateuszp-d845hup.jpg"];
    [urlArray addObject:@"http://fc08.deviantart.net/fs70/i/2014/303/f/a/chicago_trump_by_mateuszp-d84ptd3.jpg"];
    
    
    
}

-(void)viewWillDisappear:(BOOL)animated{
    
}

@end

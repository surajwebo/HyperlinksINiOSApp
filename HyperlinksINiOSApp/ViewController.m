//
//  ViewController.m
//  HyperlinksINiOSApp
//
//  Created by Suraj on 26/03/14.
//  Copyright (c) 2014 Suraj. All rights reserved.
//

#import "ViewController.h"

#define X_COORDINATE 20
#define Y_COORDINATE 140
#define WIDTH  280
#define HEIGHT 200

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *strText = [NSString stringWithFormat: @"Hey this is my blog: http://objectivecwithsuraj.blogspot.in/ which is hosted on https://www.blogger.com/. This is my blog here is share my experiences with all of you. So it can help others as well as me in future. "];
    UITextView *txtViewClickableHyperLink = [[UITextView alloc] init];
    [txtViewClickableHyperLink setFrame:CGRectMake(X_COORDINATE, Y_COORDINATE, WIDTH, HEIGHT)];
    [txtViewClickableHyperLink setEditable:NO];
    [txtViewClickableHyperLink setDataDetectorTypes:UIDataDetectorTypeLink];
    [txtViewClickableHyperLink setText:strText];
    [txtViewClickableHyperLink setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    [txtViewClickableHyperLink setFont:[UIFont systemFontOfSize:20.0f]];
    [self.view addSubview:txtViewClickableHyperLink];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

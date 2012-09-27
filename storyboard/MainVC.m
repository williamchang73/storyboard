//
//  MainVC.m
//  storyboard
//
//  Created by William Chang on 9/27/12.
//  Copyright (c) 2012 William Chang. All rights reserved.
//

#import "MainVC.h"
#import "IIViewDeckController.h"

@interface MainVC ()

@end

@implementation MainVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"loading main vc");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showFriends:(id)sender {
    [self.viewDeckController toggleRightViewAnimated:YES];
}

- (IBAction)showMenu:(id)sender {
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
@end

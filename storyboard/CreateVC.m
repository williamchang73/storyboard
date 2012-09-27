//
//  CreateVC.m
//  storyboard
//
//  Created by William Chang on 9/27/12.
//  Copyright (c) 2012 William Chang. All rights reserved.
//

#import "CreateVC.h"

@interface CreateVC ()

@end

@implementation CreateVC

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissCreatation:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end

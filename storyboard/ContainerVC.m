//
//  ContainerVC.m
//  storyboard
//
//  Created by William Chang on 9/27/12.
//  Copyright (c) 2012 William Chang. All rights reserved.
//

#import "ContainerVC.h"
#import "IIViewDeckController.h"
#import "MainVC.h"
#import "FriendsVC.h"
#import "MenuVC.h"


@interface ContainerVC ()

@end

@implementation ContainerVC

@synthesize centerController = _viewController;
@synthesize containerController = _containerController;
@synthesize rightController = _rightController;
@synthesize leftController = _leftController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    
    MainVC *mainVC = (MainVC *)[storyboard instantiateViewControllerWithIdentifier:@"MainVC"];
    
    FriendsVC *friendsVC = (FriendsVC *)[storyboard instantiateViewControllerWithIdentifier:@"FriendsVC"];
    
    MenuVC *menuVC = (MenuVC *)[storyboard instantiateViewControllerWithIdentifier:@"MenuVC"];
    
    
    self.containerController = [[IIViewDeckController alloc] initWithCenterViewController:mainVC
                                                                       leftViewController:menuVC
                                                                      rightViewController:friendsVC];
    self.containerController.view.frame = self.view.bounds;
    
    [self.view addSubview:self.containerController.view];
    
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self.containerController viewWillAppear:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

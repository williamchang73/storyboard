//
//  ContainerVC.h
//  storyboard
//
//  Created by William Chang on 9/27/12.
//  Copyright (c) 2012 William Chang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerVC : UIViewController


@property (retain, nonatomic) UIViewController *centerController;
@property (retain, nonatomic) UIViewController *containerController;
@property (retain, nonatomic) UIViewController *rightController;
@property (retain, nonatomic) UIViewController *leftController;

@end

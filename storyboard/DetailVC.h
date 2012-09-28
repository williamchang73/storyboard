//
//  DetailVC.h
//  storyboard
//
//  Created by William Chang on 9/28/12.
//  Copyright (c) 2012 William Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWPhotoBrowser.h"

@interface DetailVC : UIViewController<MWPhotoBrowserDelegate> {
    NSArray *_photos;
}
@property (strong, retain) NSArray *photos;
- (IBAction)showImage:(id)sender;
- (IBAction)dismissDetailView:(id)sender;

@end

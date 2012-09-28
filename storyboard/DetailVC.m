//
//  DetailVC.m
//  storyboard
//
//  Created by William Chang on 9/28/12.
//  Copyright (c) 2012 William Chang. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()

@end

@implementation DetailVC

@synthesize photos = _photos;

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
    NSLog(@"load image view");
    [self initPhotos];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - MWPhotoBrowserDelegate

- (void)initPhotos{
    NSLog(@"init photos");
    
    
    // Browser
	NSMutableArray *photos = [[NSMutableArray alloc] init];
    MWPhoto *photo;
    photo = [MWPhoto photoWithFilePath:[[NSBundle mainBundle] pathForResource:@"photo1l" ofType:@"jpg"]];
    photo.caption = @"Grotto of the Madonna";
    [photos addObject:photo];
    photo = [MWPhoto photoWithFilePath:[[NSBundle mainBundle] pathForResource:@"photo2l" ofType:@"jpg"]];
    photo.caption = @"The London Eye is a giant Ferris wheel situated on the banks of the River Thames, in London, England.";
    [photos addObject:photo];
    photo = [MWPhoto photoWithFilePath:[[NSBundle mainBundle] pathForResource:@"photo3l" ofType:@"jpg"]];
    photo.caption = @"York Floods";
    [photos addObject:photo];
    photo = [MWPhoto photoWithFilePath:[[NSBundle mainBundle] pathForResource:@"photo4l" ofType:@"jpg"]];
    photo.caption = @"Campervan";
    [photos addObject:photo];
    self.photos = photos;
    
    NSLog(@"%d", [self.photos count]);
}

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser {
    return _photos.count;
}

- (MWPhoto *)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index {
    NSLog(@"loading the index : %d with %d", index, _photos.count);
    if (index < _photos.count)
        return [_photos objectAtIndex:index];
    return nil;
}

- (IBAction)showImage:(id)sender {
    // Create browser
	MWPhotoBrowser *browser = [[MWPhotoBrowser alloc] initWithDelegate:self];
    browser.displayActionButton = YES;
    browser.wantsFullScreenLayout = YES;
    [browser setInitialPageIndex:0];
    
    [self.navigationController pushViewController:browser animated:YES];

}

- (IBAction)dismissDetailView:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end

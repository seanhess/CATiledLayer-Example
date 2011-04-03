//
//  TilesViewController.m
//  Tiles
//
//  Created by Sean Hess on 3/29/11.
//  Copyright 2011 I.TV. All rights reserved.
//

#import "TilesViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "TiledView.h"

@implementation TilesViewController
@synthesize scrollView;

- (void)dealloc
{
    [scrollView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"VIEW DID LOAD");

    CGRect contentRect = CGRectMake(0, 0, 512, 4000);

    TiledView * tiledView = [[[TiledView alloc] initWithFrame:contentRect] autorelease];
    [self.scrollView addSubview:tiledView];    
    
    self.scrollView.contentSize = contentRect.size;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}



@end

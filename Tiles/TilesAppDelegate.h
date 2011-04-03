//
//  TilesAppDelegate.h
//  Tiles
//
//  Created by Sean Hess on 3/29/11.
//  Copyright 2011 I.TV. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TilesViewController;

@interface TilesAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TilesViewController *viewController;

@end

//
//  ContentView.m
//  Tiles
//
//  Created by Sean Hess on 3/29/11.
//  Copyright 2011 I.TV. All rights reserved.
//

#import "TiledView.h"
#import <QuartzCore/CATiledLayer.h>

@implementation TiledView

+ (Class)layerClass {
	return [CATiledLayer class];
}

- (id) initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
//        self.backgroundColor = [UIColor blueColor];
        
        // Note you MUST call self.contentScaleFactor for THIS view, not for any parent view, because it is incorrect for parent views. 
//        [(CATiledLayer*)self.layer setTileSize:CGSizeMake(100 * self.contentScaleFactor, 100 * self.contentScaleFactor)];
    }
    return self;
}

//// Only override drawRect: if you perform custom drawing.
//// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect
//{
//    NSLog(@"DRAW RECT");
//    // Drawing code
//}

- (void)setNeedsDisplayInRect:(CGRect)rect {
    NSLog(@"setNeedsDisplayInRect:%@", NSStringFromCGRect(rect));
    [super setNeedsDisplayInRect:rect];
}

- (void)setNeedsDisplay {
    NSLog(@"setNeedsDisplay");
    [super setNeedsDisplay];
}

// Sometimes this gets called multiple times for the first rects, but that's probably ok
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    
    CGRect rect = CGContextGetClipBoundingBox(ctx);
    NSLog(@"DRAW LAYER %@", NSStringFromCGRect(rect));
    
//    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
//    CGContextAddRect(ctx, CGRectMake(rect.origin.x + 2, rect.origin.y + 2, rect.size.width - 4, rect.size.height -4 ));
//    CGContextFillPath(ctx);
    
}

- (void)dealloc
{
    [super dealloc];
}

@end

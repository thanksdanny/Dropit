//
//  BezierPathView.m
//  DropIt
//
//  Created by Danny Ho on 3/24/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView

- (void)setPath:(UIBezierPath *)path {
    _path = path;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [self.path stroke];
}
@end

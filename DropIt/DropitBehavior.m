//
//  DropitBehavior.m
//  DropIt
//
//  Created by Danny Ho on 3/22/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior()

@property (nonatomic, strong) UIGravityBehavior *gravity;
@property (nonatomic, strong) UICollisionBehavior *collider;

@end

@implementation DropitBehavior

- (UICollisionBehavior *)collider {
    if (!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}
- (UIGravityBehavior *)gravity {
    if (!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
    }
    return _gravity;
}

- (void)addItem:(id <UIDynamicItem>)item {
    [self.gravity addItem:item];
    [self.collider addItem:item];
}

- (void)removeItem:(id <UIDynamicItem>)item {
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
}


- (instancetype)init{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    
    return self;
}

@end

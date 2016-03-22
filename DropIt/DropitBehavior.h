//
//  DropitBehavior.h
//  DropIt
//
//  Created by Danny Ho on 3/22/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior

- (void)addItem:(id <UIDynamicItem>)item;
- (void)removeItem:(id <UIDynamicItem>)item;

@end

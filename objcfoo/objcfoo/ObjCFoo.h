//
//  objcfoo.h
//  objcfoo
//
//  Created by Eric Ito on 11/6/13.
//  Copyright (c) 2013 Eric Ito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjCFoo : NSObject

+ (instancetype)shared;

@property (nonatomic, assign) int count;

- (void)increment;
- (void)decrement;
@end

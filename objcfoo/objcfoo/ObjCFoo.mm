//
//  objcfoo.m
//  objcfoo
//
//  Created by Eric Ito on 11/6/13.
//  Copyright (c) 2013 Eric Ito. All rights reserved.
//

#import "ObjCFoo.h"
#include "foo.h"

@implementation ObjCFoo {
    foo* _foo;
}

+ (instancetype)shared {
    static ObjCFoo *kObjCFoo = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        kObjCFoo = [[self alloc] init];
    });
    return kObjCFoo;
}

- (id)init {
    self = [super init];
    if (self) {
        _foo = new foo();
    }
    return self;
}

-(void)dealloc {
    if (_foo) {
        delete _foo;
    }
}

- (void)setCount:(int)count {
    _foo->set_count(count);
}

- (int)count {
    return _foo->get_count();
}

-(void)increment {
    _foo->increment();
}

-(void)decrement {
    _foo->decrement();
}

- (NSString*)description {
    return [NSString stringWithUTF8String:_foo->to_string().c_str()];
}
@end

//
//  ViewController.m
//  objcfooapp
//
//  Created by Eric Ito on 11/6/13.
//  Copyright (c) 2013 Eric Ito. All rights reserved.
//

#import "ViewController.h"
#import "ObjCFoo.h"

@interface ViewController ()
{
    ObjCFoo* _objcFoo;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _objcFoo = [ObjCFoo shared];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [_objcFoo increment];
    NSLog(@"%@ count: %d", _objcFoo, [_objcFoo count]);
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [_objcFoo decrement];
    NSLog(@"%@ count: %d", _objcFoo, [_objcFoo count]);
}

@end

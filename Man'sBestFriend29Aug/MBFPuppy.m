//
//  MBFPuppy.m
//  Man'sBestFriend29Aug
//
//  Created by Sakshi Jain on 02/09/14.
//
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void)puppyEyes
{
    NSLog(@" :(");
}

-(void)bark
{
    [super bark]; //call bark methpd of paret class
    NSLog(@"Bark in Child class");
    [self puppyEyes];
    [super bark];   // can call in the end also
}

@end

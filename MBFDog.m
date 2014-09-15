//
//  MBFDog.m
//  Man'sBestFriend29Aug
//
//  Created by Sakshi Jain on 29/08/14.
//
//

#import "MBFDog.h"

@implementation MBFDog

-(void)bark
{
    NSLog(@"wauu wauuuuu");
}

-(void)barkANumberOfTimes : (int)numberOfTimes
{
    for (int bark=1; bark<=numberOfTimes; bark++)
    {
       // NSLog(@"Wauu Wauu");
        [self bark];
    }
}

-(void)barkANumberOfTimes : (int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud)
    {
        for (int bark=1; bark<=numberOfTimes; bark++)
        {
            NSLog(@"bark slower");
        }
    }
    else
    {
        for (int bark=1; bark<=numberOfTimes; bark++)
        {
            NSLog(@"bark louder");
        }
    }
}

-(void)changeBreedToWolf
{
    self.breed = @"WeerWolf";
}

-(int)convertYearsFromAge: (int)humanAge
{
    int dogAge = humanAge * 3;
    return dogAge;
}

@end

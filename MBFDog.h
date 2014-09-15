//
//  MBFDog.h
//  Man'sBestFriend29Aug
//
//  Created by Sakshi Jain on 29/08/14.
//
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) NSString *breed;
@property (nonatomic,strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes : (int)numberOfTimes;
-(void)barkANumberOfTimes : (int)numberOfTimes loudly:(BOOL)isLoud;
-(void)changeBreedToWolf;
-(int)convertYearsFromAge: (int)humanAge;

@end

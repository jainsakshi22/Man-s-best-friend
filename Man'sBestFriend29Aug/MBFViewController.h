//
//  MBFViewController.h
//  Man'sBestFriend29Aug
//
//  Created by Sakshi Jain on 29/08/14.
//
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabe;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong,nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;
-(void)printHelloWorld;
-(void)printWholeNumbersBelowNumber : (int)number;
-(void)printWholeNumbersBetween : (int)number1 and:(int)number2;
-(int)factorial : (int)number;

@end
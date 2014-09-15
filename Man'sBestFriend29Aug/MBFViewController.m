//
//  MBFViewController.m
//  Man'sBestFriend29Aug
//
//  Created by Sakshi Jain on 29/08/14.
//
//

#import "MBFViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Skipper";
    myDog.breed = @"Pug";
    myDog.age = 3;
    
    myDog.image = [UIImage imageNamed:@"Dog3.jpg"];
    self.myImageView.image = myDog.image;
    self.nameLabe.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.currentIndex =0;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Tuffy";
    secondDog.breed = @"pum";
    secondDog.image = [UIImage imageNamed:@"Dog2.jpg"];
    
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Tomy";
    thirdDog.breed = @"Lab";
    thirdDog.image = [UIImage imageNamed:@"Dog1.jpg"];
    
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Jacky";
    fourthDog.breed = @"Shrauff";
    fourthDog.image = [UIImage imageNamed:@"images.jpeg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    MBFPuppy *myPuppy = [[MBFPuppy alloc] init];
    //[myPuppy puppyEyes];
    [myPuppy bark];
    myPuppy.name = @"Puppy1";
    myPuppy.breed = @"pump";
    myPuppy.image = [UIImage imageNamed:@"puppy.jpg"];
    
    [self.myDogs addObject:myPuppy];
    
    //**** Here we can call methods which are present in super class not te child class. We can't call puppyEyes method.****
   // [[self.myDogs objectAtIndex:3] bark];
    
   // NSLog(@"%@", self.myDogs);
    
//    NSLog(@"My dog name is %@ and its age is %i and its breed is %@",myDog.name,myDog.age,myDog.breed);
//    [myDog bark];
    
//    [myDog barkANumberOfTimes:4];
//    NSLog(@"Breed is %@",myDog.breed);
//    [myDog changeBreedToWolf];
//    NSLog(@"Breed is %@",myDog.breed);
//    myDog.breed = @"Lab";
//    NSLog(@"Breed is %@",myDog.breed);
    
   // [self printHelloWorld];
   // [myDog barkANumberOfTimes:4 loudly:YES];
    
//    int ageYears = [myDog convertYearsFromAge:5];
//    NSLog(@"Dog age is %i", ageYears );
//    
//    ageYears = [myDog convertYearsFromAge : myDog.age];  //myDog is an object referring instance variable
//    NSLog(@"Dog age is %i", ageYears );
//    
//    [self printWholeNumbersBelowNumber:-7];
//    [self printWholeNumbersBetween:5 and:10];
//    int factorial = [self factorial:6];
//    NSLog(@"%i",factorial);
    
}
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    //Did not get the logic of recurring dog
    
//    if(self.currentIndex == randomIndex && self.currentIndex == 0)
//    {
//        randomIndex++;
//    }
//    else if(self.currentIndex == randomIndex)
//    {
//        randomIndex--;
//    }
    
    
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabe.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabe.text = randomDog.name;
    sender.title = @"Another dog";
    
}

-(void)printWholeNumbersBelowNumber : (int)number
{
    if (number>0)
    {
        for (int i=number; i>=0; i--)
        {
            NSLog(@"%i", i);
        }
    }
    else
    {
        for (int i=number; i<=0; i++)
        {
            NSLog(@"%i", i);
        }
    }
}


-(void)printWholeNumbersBetween : (int)number1 and:(int)number2
{
    if(number1>number2)
    {
        for(int i = number1 ; i>=number2; i--)
        {
            NSLog(@"%i", i);
        }
    }
    else
    {
        for(int i = number2; i>=number1; i--)
        {
            NSLog(@"%i", i);
        }
    }
}

-(int)factorial : (int)number
{
    int fact=1;
    for (int i=number; i>=2 ;i--)
    {
        fact = fact *i ;
    }
    return fact;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)printHelloWorld
{
    NSLog(@"Hello World");
}

@end

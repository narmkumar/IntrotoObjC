//
//  ViewController.m
//  IntroToObjC
//
//  Created by Niranjan Kumar on 1/20/20.
//  Copyright © 2020 Nar Kumar. All rights reserved.
//

#import "ViewController.h"
#import "NKIVersion.h" // always import the .h file, never the .m file

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    let name = "Niranjan Kumar" // Swift
    NSString *name = @"Niranjan Kumar";
    
    // @"Objective-C String"
    // "C String" = C Programming language
    
    // Types are open to interpretation = cast types
    
//    printf("Hi my name is \(name)") \\ Swift
    NSLog(@"Hi my name is %@ there are %lu characters in my name", name, name.length); // %@ = token that matches an object
    
    char *nameInC = "Niranjan Kumar"; // C-String (Character string) - an array of hexacdecimals that represent strings
    printf("Hi my name is %s\n", nameInC);
    printf("Hi my name is %s\n", name.UTF8String);

    float pi = 3.14;
    double distance = 5590;
    int count = 27;
    
    NSLog(@"pi: %0.2f distance: %f count: %i", pi, distance, count);
    
    //NKIVersion *version = // Use of undeclared identifier 'NKIVersion'

    // 1. Get the space (Buying the land)
    // 2. Initialize the object (Build the house)
    NKIVersion *version = [[NKIVersion alloc]initWithName:@"Catalina"
                                              releaseDate:@"October 7th, 2019"];

    NSLog(@"Verison: %@ releaseDate: %@", version.name, version.releaseDate);
    
}


@end

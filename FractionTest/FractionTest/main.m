//
//  main.m
//  FractionTest
//
//  Created by Xiulan Shi on 3/11/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
  //      Fraction *myFraction = [[Fraction alloc] init];
        
        // set fraction to 1/3
        
//        [myFraction setNumerator: 1];
//        [myFraction setDenominator: 3];
        
        // display the fraction
        
//        NSLog(@"The value of myFraction is");
//        [myFraction print];
        
        // using dot operator
//        myFraction.numerator = 1;
//        myFraction.denominator = 2;
//        
//        // display the fraction's numerator and denominator
//        
//        NSLog(@"The numerator is %i, and the denominator is %i.", myFraction.numerator, myFraction.denominator);
//        
//        Fraction *aFraction = [[Fraction alloc] init];
//        
//        [aFraction setTo:100 over:200];
//        [aFraction print];
//        
//        [aFraction setTo:1 over:3];
//        [aFraction print];
        
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
//        [aFraction add: bFraction];
//        
//      //  [aFraction reduce];
//        [aFraction print];
        
        resultFraction = [aFraction add: bFraction];
        [resultFraction print];
    }
    return 0;
}

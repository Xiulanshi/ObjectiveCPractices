//
//  main.m
//  FractionTest
//
//  Created by Xiulan Shi on 3/11/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"

@interface Fraction (MathOps)

-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;

@end

@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *) f
{
    // To add two fractions;
    // a/b + c/d = ((a*d) + (b*c))/(b*d)
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) sub: (Fraction *) f
{
    // To sub two fractions;
    // a/b - c/d = ((a*d) - (b*c))/(b*d)
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
    
}
-(Fraction *) mul: (Fraction *) f
{
    // To add two fractions;
    // a/b + c/d = ((a*d) + (b*c))/(b*d)
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
    
}
-(Fraction *) div: (Fraction *) f
{
    // To add two fractions;
    // a/b + c/d = ((a*d) + (b*c))/(b*d)
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator;
    
    result.denominator = self.denominator * f.numerator;
    
    [result reduce];
    
    return result;
    
}
@end

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
        
//        Fraction *aFraction = [[Fraction alloc] init];
//        Fraction *bFraction = [[Fraction alloc] init];
//        
//        Fraction *resultFraction;
//        
//        [aFraction setTo:1 over:4];
//        [bFraction setTo:1 over:2];
//        
//        [aFraction print];
//        NSLog(@"+");
//        [bFraction print];
//        NSLog(@"=");
        
//        [aFraction add: bFraction];
//        
//      //  [aFraction reduce];
//        [aFraction print];
        
//        resultFraction = [aFraction add: bFraction];
//        [resultFraction print];
        
//        Fraction *f1 = [[Fraction alloc] init];
//        Fraction *f2 = [[Fraction alloc] init];
//        Fraction *fracResult;
//        Complex *c1 = [[Complex alloc] init];
//        Complex *c2 = [[Complex alloc] init];
//        Complex *compResult;
//        
//        [f1 setTo:1 over:10];
//        [f2 setTo:2 over:15];
//        
//        [c1 setReal:18.0 andImaginary:2.5];
//        [c2 setReal:-5.0 andImaginary:3.2];
//        
//        // add and print 2 complex numbers
//        
//        [c1 print]; NSLog(@"     +"); [c2 print];
//        NSLog(@"------");
//        compResult = [c1 add: c2];
//        [compResult print];
//        NSLog(@"\n");
//        
//        // add and print 2 fractions
//        [f1 print]; NSLog(@ "    +"); [f2 print];
//        NSLog(@"------");
//        fracResult = [f1 add: f2];
//        [fracResult print];
        
//        id dataValue;
//        Fraction *f1 = [[Fraction alloc] init];
//        Complex *c1 = [[Complex alloc] init];
//        
//        [f1 setTo: 2 over: 5];
//        [c1 setReal: 10.0 andImaginary: 2.5];
//        
//        // first dataValue gets a fraction
//        
//        dataValue = f1;
//        [dataValue print];
//        
//        // now dataValue get a complex number
//        
//        dataValue = c1;
//        [dataValue print];
        
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result;
        
        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];
        
        [a print]; NSLog(@"   +"); [b print]; NSLog(@"-----");
        result = [a add: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@"   -"); [b print]; NSLog(@"-----");
        result = [a sub: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@"   *"); [b print]; NSLog(@"-----");
        result = [a mul: b];
        [result print];
        NSLog(@"\n");
        
        [a print]; NSLog(@"   /"); [b print]; NSLog(@"-----");
        result = [a div: b];
        [result print];
        NSLog(@"\n");
        
        
    }
    return 0;
}

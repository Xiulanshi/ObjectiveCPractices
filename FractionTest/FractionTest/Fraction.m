//
//  Fraction.m
//  FractionTest
//
//  Created by Xiulan Shi on 3/11/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
//{
//    int numerator;
//    int denominator;
//}
@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}
//-(void) setNumerator: (int) n
//{
//    numerator = n;
//}
//-(void) setDenominator: (int) d
//{
//    denominator = d;
//}
//-(int) numerator
//{
//    return numerator;
//}
//-(int) denominator
//{
//    return denominator;
//}
-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    }
    else
        return NAN;
}

-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

//-(void) add: (Fraction *) f
//{
//    // To add two fractions;
//    // a/b + c/d = ((a*d) + (b*c))/(b*d)
//    
//    numerator = numerator * f.denominator + denominator * f.numerator;
//    
//    denominator = denominator * f.denominator;
//    
//    [self reduce];
//    
//}

-(Fraction *) add: (Fraction *) f
{
    // To add two fractions;
    // a/b + c/d = ((a*d) + (b*c))/(b*d)
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}


-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

@end

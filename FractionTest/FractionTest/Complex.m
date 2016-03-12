//
//  Complex.m
//  FractionTest
//
//  Created by Xiulan Shi on 3/11/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print
{
    NSLog(@" %g + %gi ", real, imaginary);
}

- (void) setReal:(double) a andImaginary:(double) b
{
    real = a;
    imaginary = b;
}

- (Complex *) add:(Complex *)f
{
    Complex *result = [[Complex alloc] init];
    
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}
@end

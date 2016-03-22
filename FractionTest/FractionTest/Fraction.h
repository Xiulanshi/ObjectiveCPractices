//
//  Fraction.h
//  FractionTest
//
//  Created by Xiulan Shi on 3/11/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//-(int) numerator;
//-(int) denominator;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
//-(void) add: (Fraction *) f;

-(void) reduce;

- (NSArray *)getArrayFromHexInt:(UInt32)hexInt;

@end

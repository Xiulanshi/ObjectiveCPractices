//
//  Complex.h
//  FractionTest
//
//  Created by Xiulan Shi on 3/11/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;
- (void) print;
- (void) setReal:(double) a andImaginary: (double) b;
- (Complex *) add: (Complex *) f;

@end

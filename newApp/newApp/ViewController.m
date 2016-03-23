//
//  ViewController.m
//  newApp
//
//  Created by Xiulan Shi on 3/22/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self getArrayFromHexInt:0xFFFFFF];
    [self colorWithHexString:@"0xFFFFFF"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor *)colorWithHexString:(NSString *)stringColor {
    
    NSString *removingAlpha = [stringColor substringFromIndex:2];
    NSString *alpha = [stringColor substringToIndex:1];
    NSUInteger red, green, blue;
    sscanf([removingAlpha UTF8String], "%2lX%2lX%2lX", &red, &green, &blue);
    
    NSString *redRounded = [NSString stringWithFormat:@"%.2f", red/255.0];
    NSString *greenRounded = [NSString stringWithFormat:@"%.2f", green/255.0];
    NSString *blueRounded = [NSString stringWithFormat:@"%.2f", blue/255.0];
    
    UIColor *color = [UIColor colorWithRed:[redRounded floatValue] green:[greenRounded floatValue] blue:[blueRounded floatValue] alpha:[alpha floatValue] ];
    
    NSLog(@"color %@",color);
    return  color;
    
}

- (NSArray *)getArrayFromHexInt:(UInt32)hexInt
{
    
    CGFloat red = ((CGFloat) ((hexInt & 0xFF0000) >> 16)) / 255.0;
    CGFloat green = ((CGFloat) ((hexInt & 0xFF00) >> 8)) / 255.0;
    CGFloat blue = ((CGFloat) (hexInt & 0xFF)) / 255.0;
    
//    red = round(red * 100) / 100;
//    green = round(green * 100) / 100;
//    blue = round(blue * 100) / 100;
    
    NSArray *colorArray = @[[NSNumber numberWithFloat:red],
                            [NSNumber numberWithFloat:green],
                            [NSNumber numberWithFloat:blue]];
    
    NSLog(@"array: %2f, %2f, %2f", red, green, blue);
    
    return colorArray;
    
}

@end

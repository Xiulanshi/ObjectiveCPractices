//
//  main.m
//  Collections
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int i;
    @autoreleasepool {
        
        // Create an array to contain the month names
        
//        NSArray *monthNames = [NSArray arrayWithObjects: @"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", nil];
        
        NSArray *monthNames = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];
        
        // List all the elements in the array
        
        NSLog(@"Month     Name");
        NSLog(@"=====     ====");
        
        
//        for (i = 0; i < 12; ++i) {
//            NSLog(@" %2i       %@", i + 1, [monthNames objectAtIndex:i]);
//        }
        
        for (i = 0; i < 12; ++i) {
            NSLog(@" %2i       %@", i + 1, monthNames[i]);
        }
        
        
        NSMutableArray *numbers = [NSMutableArray array];
        int i;
        
        // Create an array with the number 0-9
        
        for (i = 0; i < 10; ++i) {
            numbers[i] = @(i);
        }
        
        // Sequence through the array and display the values
        
        for (i = 0; i < 10; ++i) {
            NSLog(@"%@", numbers[i]);
        }
        
        // Look how NSLog can display it with a single %@ format
        
        NSLog(@"====== Using a single NSLog");
        NSLog(@"%@", numbers);
        
        
        
    }
    return 0;
}

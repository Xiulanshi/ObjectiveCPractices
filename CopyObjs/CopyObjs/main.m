//
//  main.m
//  CopyObjs
//
//  Created by Xiulan Shi on 3/15/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       /*
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects: @"one", @"two", @"three", @"four", nil];
        
        NSMutableArray *dataArray2;
        
        // simple assignment
        
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"    %@", elem);
        }
        
        NSLog(@"dataArray2: ");
        
        for (NSString *elem in dataArray2) {
            NSLog(@"    %@", elem);
        }
        
        // try a copy, then remove the first element from the copy
        
        dataArray2 = [dataArray mutableCopy];
        [dataArray2 removeObjectAtIndex:0];
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"    %@", elem);
        }
        
        NSLog(@"dataArray2: ");
        
        for (NSString *elem in dataArray2) {
            NSLog(@"    %@", elem);
        }
        */
        
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:[NSMutableString stringWithString:@"one"], [NSMutableString stringWithString:@"two"], [NSMutableString stringWithString:@"three"], nil];
        
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"    %@", elem);
        }
        
        // make a copy, then change one of the strings
        
        dataArray2 = [dataArray mutableCopy];
        
        mStr = dataArray[0];
        [mStr appendString: @"ONE"];
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"    %@", elem);
        }
        
        NSLog(@"dataArray2: ");
        
        for (NSString *elem in dataArray2) {
            NSLog(@"    %@", elem);
        }
        
        
    
    }
    return 0;
}

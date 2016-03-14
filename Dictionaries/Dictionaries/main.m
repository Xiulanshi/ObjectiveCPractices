//
//  main.m
//  Dictionaries
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    /*
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        // Store three entries in the glossary
        
//        [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
//        [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
//        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
        
        glossary[@"abstract class"] = @"A class defined so other classes can inherit from it";
        glossary[@"adopt"] = @"To implement all the methods defined in a protocol";
        glossary[@"archiving"] = @"Storing an object for later use";
        

        
        
        // Retrieve and display them
        
//        NSLog(@"abstract class: %@", [glossary objectForKey:@"abstract class"]);
//        NSLog(@"adopt: %@", [glossary objectForKey:@"adopt"]);
//        NSLog(@"aechiving: %@", [glossary objectForKey:@"archiving"]);
        
        NSLog(@"abstract class: %@", glossary[@"abstract class"]);
        NSLog(@"adopt: %@", glossary[@"adopt"]);
        NSLog(@"aechiving: %@", glossary[@"archiving"]);
     
     */
        
        NSDictionary *glossary = @{
                                   @"abstract class": @"A class defined so other classes can inherit from it",
                                   @"adopt": @"To implement all the methods defined in a protocol",
                                   @"archiving": @"Storing an object for later use"
                                   };
        
        // Print all key-value pairs from the dictionary
        
        for (NSString *key in glossary) {
            NSLog(@"%@: %@", key, glossary[key]);
        }
       
    }
    return 0;
}

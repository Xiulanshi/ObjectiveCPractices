//
//  main.m
//  Chapter15
//
//  Created by Xiulan Shi on 3/13/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        // integer value
        
//        intNumber = [NSNumber numberWithInteger:100];
//        myInt = [intNumber integerValue];
//        NSLog(@"%li", (long) myInt);
        
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        
        // long value
        
//        myNumber = [NSNumber numberWithLong:0xabcdef];
//        NSLog(@"%lx", [myNumber longValue]);
        
        myNumber = @0xabcdefL;
        NSLog(@"%lx", [myNumber longValue]);
        
        
        // char value
        
//        myNumber = [NSNumber numberWithChar:'X'];
//        NSLog(@"%c", [myNumber charValue]);
        myNumber = @'X';
        NSLog(@"%c", [myNumber charValue]);
        
        // float value
        
//        floatNumber = [NSNumber numberWithFloat:100.00];
//        NSLog(@"%g", [floatNumber floatValue]);
        floatNumber = @100.0f;
        NSLog(@"%g", [floatNumber floatValue]);
        
        // double
        
//        myNumber = [NSNumber numberWithDouble:12345e+15];
//        NSLog(@"%g", [myNumber doubleValue]);
//        
//        // Wrong access here
//        
//        NSLog(@"%li", (long) [myNumber integerValue]);
//        
//        // Test two Numbers for equality
//        
//        if ([intNumber isEqualToNumber: floatNumber] == YES)
//            NSLog(@"Numbers are equal");
//            else
//                NSLog(@"Numbers are not equal");
//            
//            // Test if one Number is <, ==, > than second Number
//            
//            if ([intNumber compare:myNumber] == NSOrderedAscending)
//                
//                NSLog(@"First number is less than second");
        
        NSString *str = @"Programming is fun";
        
        NSLog(@"%@", str);
        NSLog(@"%@", intNumber);
        
        
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        // Count the number of characters
        NSLog(@"Length of str1: %lu", [str1 length]);
        
        // Copy one string to another
        
        res = [NSString stringWithString:str1];
        NSLog(@"copy: %@", res);
        
        // Copy one string to the end of another
        
        str2 = [str1 stringByAppendingString:str2];
        NSLog(@"Concatenation: %@", str2);
        // Test if two strings are equal
        
        if ([str1 isEqualToString:res] == YES)
            NSLog(@"str1 == res");
        else
            NSLog(@"str1 != res");
        
        // Test if one string is <, ==  or > than another
        
        compareResult = [str1 compare:str2];
        
        if (compareResult == NSOrderedAscending)
            NSLog(@"str1 < str2");
        else if (compareResult == NSOrderedSame)
            NSLog(@"str1 == str2");
        else // must be NSOrderedDescendng
            NSLog(@"str1 > str2");
        
        // Convert a string to uppercase
        
        res = [str1 uppercaseString];
        NSLog(@"Uppercase conversion: %s", [res UTF8String]);
        
        // Covert a string to lowercase
        
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion: %@", res);
        
        NSLog(@"Original string: %@", str1);
        
        
        NSString *str1 = @"This is string A";
        NSString *res;
        NSRange subRange;
        
        //Extract first 3 chars form string
        
        res = [str1 substringToIndex:3];
        NSLog(@"First 3 chars of str1: %@", res);
        
        //Extract chars to end of string starting index 5
        
        res = [str1 substringFromIndex:5];
        NSLog(@"Chars from index 5 of str1: %@", res);
        
        // Extract chars from index 8 through 13 (6chars)
        
        res = [[str1 substringFromIndex:8] substringToIndex:6];
        NSLog(@"Chars from index 8 through 13: %@", res);
        
        // An easier way to do the same thing
        res = [str1 substringWithRange:NSMakeRange(8, 6)];
        NSLog(@"Chars from index 8 through 13 easier way: %@", res );
        
        // Locate one string inside another
        
        subRange = [str1 rangeOfString:@"string A"];
        NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
        
        subRange = [str1 rangeOfString:@"string B"];
        
        if (subRange.location == NSNotFound)
            NSLog(@"String not found");
        else
            NSLog(@"String is at index %lu, length is %lu", subRange.location, subRange.length);
         
          */
        
        NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;
        
        // Create mutable string from nonmutable
        
        mstr = [NSMutableString stringWithString:str1];
        NSLog(@"%@", mstr);
        
        // Insert characters
        
        [mstr insertString:@" mutable" atIndex:7];
        NSLog(@"%@", mstr);
        
        // Effective concatenation if insert at end
        
        [mstr insertString:@" and string B" atIndex:[mstr length]];
        NSLog(@"%@", mstr);
        
        // or cna use appendString directly
        
        [mstr appendString:@" and string C"];
        NSLog(@"%@", mstr);
        
        // Delete substring based on range
        
        [mstr deleteCharactersInRange:NSMakeRange(16, 13)];
        NSLog(@"%@", mstr);
        
        // Find range first and then use it for deletion
        
        substr = [mstr rangeOfString:@"string B and "];
        
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange:substr];
            NSLog(@"%@", mstr);
        }
        
        // Set the mutable string directly
        
        [mstr setString:@"This is string A"];
        NSLog(@"%@", mstr);
        
        // Now let's replace a range of chars with another
        
        [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
        NSLog(@"%@", mstr);
        
        // Search and replace
        search = @"This is";
        replace = @"An example of";
        
        substr = [mstr rangeOfString:search];
        
        if (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            NSLog(@"%@", mstr);
        }
        
        // Search and replace all occurrences
        
        search = @"a";
        replace = @"X";
        
        substr = [mstr rangeOfString:search];
        
        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            substr = [mstr rangeOfString:search];
        }
        
        NSLog(@"%@", mstr);
        
        
        
        
    }
    return 0;
}

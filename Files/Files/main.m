//
//  main.m
//  Files
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

// Basic file operations
// Assumes the existence of a file called "testfile"
// in the current directory

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *fName = @"testfile";
        NSFileManager *fm;
        NSDictionary *attr;
        
        // Need to create an instance of the file manager
        
        fm = [NSFileManager defaultManager];
        
        // Let's make sure our test file exists first
        
        if ([fm fileExistsAtPath:fName ]== NO) {
            NSLog(@"File doesn't exist!");
            return 1;
        }
        
        // now let's make a copy
        
        if ([fm copyItemAtPath:fName toPath:@"newfile" error:NULL] == NO) {
            NSLog(@"File Copy failed!");
            return 2;
        }
        
        // Now let's test to see if the two files are equal
        
        if ([fm contentsEqualAtPath:fName andPath:@"newfile"] == NO) {
            NSLog(@"Files are not Equal!");
            return 3;
        }
        
        // Now let's rename the copy
        
        if ([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL] == NO) {
            NSLog(@"File rename Failed");
            return 4;
        }
        
        // get the size of the newfile2
        
        if ((attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL]) == nil) {
            NSLog(@"Couldn't get file attributes!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes", [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        // And finally, let's delete the original file
        
        if ([fm removeItemAtPath:fName error:NULL] == NO) {
            NSLog(@"file removal failed");
            return 6;
        }
        
        NSLog(@"All operations were successful");
        
        // Display the contents of the newly created file
        
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
              
    }
    return 0;
}

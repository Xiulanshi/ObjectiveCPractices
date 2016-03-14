//
//  AddressBook.m
//  AddressBook
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

- (instancetype) initWithName: (NSString *) name {
    
    self = [super init];
    
    if (self) {
        self.bookName = [NSString stringWithString:name];
        self.book = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype) init {
    
    return [self initWithName:@"NoName"];
    
}
- (void) addCard: (AddressCard *) theCard {
    
    [self.book addObject:theCard];
    
}
- (NSUInteger) entries {
    
    return self.book.count;
}
- (void) list {
    
    NSLog(@"======== Contents of: %@ ==========", self.bookName);
    
    for (AddressCard *theCard in self.book ) {
        NSLog(@"%-20s     %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    
    NSLog(@"=====================================================");
    
}

@end

//
//  AddressCard.m
//  AddressBook
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

- (void) print {
    NSLog(@"======================================");
    NSLog(@"|                                    |");
    NSLog(@"|   %-31s  |", [self.name UTF8String]);
    NSLog(@"|   %-31s  |", [self.email UTF8String]);
    NSLog(@"|                                    |");
    NSLog(@"|                                    |");
    NSLog(@"|                                    |");
    NSLog(@"|        O                O          |");
    NSLog(@"======================================");
    
}

- (void) setName:(NSString *) theName andEmail: (NSString *) theEmail {
    self.name = theName;
    self.email = theEmail;
}

// Compare the two names from the specified address cards
//- (NSComparisonResult) compareNames: (id) element {
//    return [self.name compare:[element name]];
//}

-(void) assignName: (NSString *) theName andEmail: (NSString *) theEmail {
    
}
-(void) encodeWithCoder: (NSCoder *) encoder {
    
    [encoder encodeObject:self.name forKey:@"AddressCardName"];
    [encoder encodeObject:self.email forKey:@"AddressCardEmail"];
}

-(id) initWithCoder: (NSCoder *) decoder {
    self.name = [decoder decodeObjectForKey:@"AddressCardName"];
    self.email = [decoder decodeObjectForKey:@"AddressCardEmail"];
    
    return self;
}
@end

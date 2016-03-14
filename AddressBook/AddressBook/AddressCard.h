//
//  AddressCard.h
//  AddressBook
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

- (void) print;
- (void) setName:(NSString *) theName andEmail: (NSString *) theEmail;

@end

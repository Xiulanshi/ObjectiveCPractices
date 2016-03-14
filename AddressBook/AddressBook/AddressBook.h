//
//  AddressBook.h
//  AddressBook
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

- (instancetype) initWithName: (NSString *) name;
- (void) addCard: (AddressCard *) theCard;
- (void) removeCard: (AddressCard *) theCard;

- (NSUInteger) entries;
- (void) list;
- (AddressCard *) lookup: (NSString *) theName;

- (void) sort;

@end

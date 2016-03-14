//
//  main.m
//  AddressBook
//
//  Created by Xiulan Shi on 3/14/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfiness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [AddressBook alloc];
        
//        // Set up a new address book
//        
//        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Address Book"];
//        
//        AddressCard *myCard;
//        
//        NSLog(@"Entries in address book after creation: %li", [myBook entries]);
        
        // Now set up four address cards
        
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        myBook = [myBook initWithName:@"Linda's Address Book"];
        
        // Add the cards to the address book
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        NSLog(@"Entries in address book after adding cards: %li", [myBook entries]);
        
        // List all the entries in the book now unsorted
        
        [myBook list];
        
        // Sort it and list it again
        
        [myBook sort];
        [myBook list];
        
//        // Look up a person by name
//        
//        NSLog(@"Stephen Kochan");
//        myCard = [myBook lookup:@"stephen kochan"];
//        
//        if (myCard != nil) {
//            [myCard print];
//        } else {
//            NSLog(@"Not found!");
//        }
//        
////        // try another lookup
////        
////        NSLog(@"Haibo Zhang");
////        myCard = [myBook lookup:@"Haibo Zhang"];
////        
////        if (myCard != nil) {
////            [myCard print];
////        } else {
////            NSLog(@"Not found!");
////        }
//        
//        // Now remove the entry from the book
//        [myBook removeCard:myCard];
//        [myBook list];

    }
    return 0;
}

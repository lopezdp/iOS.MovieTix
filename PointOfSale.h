//
//  PointOfSale.h
//  MovieTixPOS
//
//  Created by David P. Lopez on 8/30/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PointOfSale : NSObject

//setters
- (void) setMembership: (bool) b;


- (void) setLanguage: (char) l;


- (void) setTicketQty: (int) n;


- (void) setDiscount: (double) d;


//getters
//this method will print the correct menu to the screen based on the language chosen by the user
- (void) getLanguageMenu;


//get membership privelages
- (bool) getMembership;


//get language selection
- (char) getLanguage;


//this method returns the number of tickets ordered by the user
- (int) getTicketQuantity;


//this method returns the cost of the ticket purchase
- (double) getCostOfPurchase;


//this method checks for input errors in the language selection menu
- (bool) errorCheck: (char) c;


//this method checks for input errors in the Order menu
- (bool) errorCheckOrderMenu: (char) c;

@end

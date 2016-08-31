//
//  PointOfSale.m
//  MovieTixPOS
//
//  Created by David P. Lopez on 8/30/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "PointOfSale.h"
#define DiscountQTY 4

@implementation PointOfSale
{
    bool RCCmem;
    char langSelect;
    int qtyTix;
    double costTix;
    double memDisc;
    
}

//setters
- (void) setMembership: (bool) b
{
    RCCmem = b;
    memDisc = 0;
}

- (void) setLanguage: (char) l
{
    langSelect = l;
}

- (void) setTicketQty: (int) n
{
    qtyTix = n;
}

- (void) setDiscount: (double) d
{
    memDisc = d;
}

//getters
//this method will print the correct menu to the screen based on the language chosen by the user
- (void) getLanguageMenu
{
    if(langSelect == 'e')
    {
        printf("Please choose one of the following: \n\n");
        printf("\t 1. Purchase Tickets \n");
        printf("\t 2. Quit Program \n\n");
        printf("Your choice: ");
  
    }
    else if(langSelect == 's')
    {
        printf("Por favor seleccione una de las siguientes: \n\n");
        printf("\t 1. Comprar Boletos \n");
        printf("\t 2. Salir del Programa \n\n");
        printf("Tu elección: ");
    }
    else if(langSelect == 'p')
    {
        printf("Por favor, escolha uma das seguintes opções: \n\n");
        printf("\t 1. Bilhetes de Compra \n");
        printf("\t 2. Saia do Programa \n\n");
        printf("Sua escolha: ");
    }
    else
    {
        printf("This is a secret portal to another location in time and space, you shouldn't be this deep inside of the program...");
    }
}

//get membership privelages
- (bool) getMembership
{
    return RCCmem;
}

//get language selection
- (char) getLanguage
{
    return langSelect;
}

//this method returns the number of tickets ordered by the user
- (int) getTicketQuantity
{
    return qtyTix;
}

//this method returns the cost of the ticket purchase
- (double) getCostOfPurchase
{
    if(qtyTix <= 4)
    {
        if(RCCmem == true)
        {
            costTix = ((float)qtyTix * 10.0) - (((float) qtyTix * 10.0) * (memDisc/100));
            printf("costTix in method: %f \n", costTix);
        }
        else if(RCCmem == false)
        {
            costTix = (float) qtyTix * 10.0;
        }
    }
    else if(qtyTix > 4)
    {
        if(RCCmem == true)
        {
            costTix = ((float) qtyTix * 8.0) - (((float) qtyTix * 8.0) * (memDisc/100));
        }
        else if(RCCmem == false)
        {
            costTix = (float) qtyTix * 8.0;
        }
    }
    return costTix;
}

//this method checks for input errors in the language selection menu
- (bool) errorCheck: (char) c
{
    //debug statement
    //printf("inside errorCheck \n");
    
    //char "array" to use with strcmp()
    char e = '1';
    char s = '2';
    char p = '3';
    
    //printf("c deref: %c \n", c);//debug statement
    
    //printf("comparison: %c = %c \n", c, s);//spanish char debug statement
    
    //using strcmp() to test input against entry
    if(c == e || c == s || c == p)
    {
        //return true if input matches a possible entry
        //printf("error is returning true because input matches \n \n"); //debug statement
        return true;
    }
    else
    {
        //return false if input is anything but a match
        //printf("error is returning false because input doesnt match \n \n");//debug statement
        return false;
    }
}

//this method checks for input errors in the Order menu
- (bool) errorCheckOrderMenu: (char) c
{
    //debug statement
    //printf("inside errorCheck \n");
    
    //char "array" to use with strcmp()
    char b = '1';
    char q = '2';
    
    //printf("c deref: %c \n", c);//debug statement
    
    //printf("comparison: %c = %c \n", c, b);//buy char debug statement
    
    //using strcmp() to test input against entry
    if(c == b || c == q)
    {
        //return true if input matches a possible entry
        //printf("error is returning true because input matches \n \n"); //debug statement
        return true;
    }
    else
    {
        //return false if input is anything but a match
        //printf("error is returning false because input doesnt match \n \n");//debug statement
        return false;
    }
}

@end

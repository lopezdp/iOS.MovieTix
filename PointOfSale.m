//
//  PointOfSale.m
//  MovieTixPOS
//
//  Created by David P. Lopez on 8/30/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "PointOfSale.h"

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
}

- (void) setLanguage: (char) l
{
    langSelect = l;
}

- (void) setTicketQty: (int) n
{
    qtyTix = n;
}

- (void) setTicketCost: (double) c
{
    costTix = c;
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

//this method returns the number of tickets ordered by the user
- (int) getTicketQuantity
{
    return qtyTix;
}













//this method checks for input errors dont know if will use in main or in implementation file
- (bool) errorCheck: (char) c
{
    //debug statement
    printf("inside errorCheck");
    
    //char "array" to use with strcmp()
    char e[1];
    char s[2];
    char p[3];
    
    //using strcmp() to test input against entry
    if(strcmp(&c,e) != 0 || strcmp(&c,s) != 0 || strcmp(&c,p) != 0)
    {
        //return false if input is anything but a match
        return false;
    }
    else
    {
        //return true if input matches a possible entry
        return true;
    }
}







@end

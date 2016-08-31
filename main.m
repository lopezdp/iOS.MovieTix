//
//  main.m
//  MovieTixPOS
//
//  Created by David P. Lopez on 8/30/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PointOfSale.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PointOfSale *myMovieTix = [[PointOfSale alloc] init];
        char l; //language selection variable
        char m; //order menu selection variable
        char rm; //RCC member variable
        int p; //tix qty selection prompt variable
        int counter;
        double AmtDue;
        double retail;
        double savings;
        
        do{
            printf("Welcome to the Regal Entertainment Group Movie Ticket System.\n \n");
            printf("Please select your language settings from one of the following options: \n \n");
            printf("\t 1. English \n");
            printf("\t 2. Spanish \n");
            printf("\t 3. Portuguese \n \n");
            
            printf("Enter your selection here: ");
            
            scanf("\n%c", &l);
            //printf("\n l is: %c \n", l);//debug statement
            
            if(counter == 6)
            {
                l = '1';
                break;
            }
            else
            {
                counter++;
            }
            
        } while (![myMovieTix errorCheck: l]);
        
        if(l == '1')
        {
            //printf("default input l = %c \n \n",l);//debug statement
            [myMovieTix setLanguage: 'e'];
            
            //printf("language is set to: %c \n \n", [myMovieTix getLanguage]);//debug statement
            
            [myMovieTix getLanguageMenu]; //display order menu in user's language
            
            scanf("\n%c", &m);
            //printf("\n m is: %c \n", m);//debug statement
            
            if(m == '1' && [myMovieTix errorCheckOrderMenu: m])
            {
                printf("Enter the QTY of tickets to purchase: ");
                
                while(!(scanf("\n%i", &p) == true))
                {
                    printf("Please reenter the QTY of tickets to purchase! \n");
                    fpurge(stdin);
                }
                
                [myMovieTix setTicketQty: p];
                
                printf("Are you a Royal Crown Club member? Enter (Y or N)");
                printf("Enter your selection: ");
                
                while(!(scanf("\n%c", &rm) == 1))
                {
                    printf("Please enter Y or N)");
                }
                
                if(rm == 'Y' || rm == 'y' || rm == 'N' || rm == 'n')
                {
                    if(rm == 'Y' || rm == 'y')
                    {
                        [myMovieTix setMembership: true];
                        [myMovieTix setDiscount: 5];
                    }
                    else if(rm == 'N' || rm == 'n')
                    {
                        [myMovieTix setMembership: false];
                        [myMovieTix setDiscount: 0];
                    }
                }
                
                AmtDue = [myMovieTix getCostOfPurchase];
                retail = p * 10.0;
                savings = retail - AmtDue;
                
                printf("Thank you for your purchase!!!!");
                printf("Your Total is: %4.2f \n", AmtDue);
                printf("You saved %4.2f today! \n \n", savings);
                
                if([myMovieTix getMembership] == true)
                {
                    printf("***Free Small Popcorn***");
                }
                
            }
            else if(m == '2' && [myMovieTix errorCheckOrderMenu: m])
            {
                exit(0);
            }
            
        }
        else if(l == '2')
        {
            //printf("default input l = %c \n \n",l);//debug statement
            [myMovieTix setLanguage: 's'];
            
            //printf("language is set to: %c \n \n", [myMovieTix getLanguage]);//debug statement
            
            [myMovieTix getLanguageMenu]; //display order menu in user's language
            
            scanf("\n%c", &m);
            //printf("\n m is: %c \n", m);//debug statement
            
            if(m == '1' && [myMovieTix errorCheckOrderMenu: m])
            {
                printf("Cuántas entradas que desea comprar: ");
                
                while(!(scanf("\n%i", &p) == true))
                {
                    printf("Por favor, vuelva a introducir la cantidad de boletos que desea comprar! \n");
                    fpurge(stdin);
                }
                
                [myMovieTix setTicketQty: p];
                
                printf("Eres un miembro de Royal Crown Club? Enter (Y or N)");
                printf("Introduzca su selección: ");
                
                while(!(scanf("\n%c", &rm) == 1))
                {
                    printf("Por favor introduzca Y or N)");
                }
                
                if(rm == 'Y' || rm == 'y' || rm == 'N' || rm == 'n')
                {
                    if(rm == 'Y' || rm == 'y')
                    {
                        [myMovieTix setMembership: true];
                        [myMovieTix setDiscount: 5];
                    }
                    else if(rm == 'N' || rm == 'n')
                    {
                        [myMovieTix setMembership: false];
                        [myMovieTix setDiscount: 0];
                    }
                }
                
                AmtDue = [myMovieTix getCostOfPurchase];
                retail = p * 10.0;
                savings = retail - AmtDue;
                
                printf("Gracias por su compra!!!!");
                printf("Tu total es: %4.2f \n", AmtDue);
                printf("Usted guardó %4.2f hoy! \n \n", savings);
                
                if([myMovieTix getMembership] == true)
                {
                    printf("***Pequeño palomitas Gratis***");
                }
                
            }
            else if(m == '2' && [myMovieTix errorCheckOrderMenu: m])
            {
                exit(0);
            }
        }
        else if(l == '3')
        {
            //printf("default input l = %c \n \n",l);//debug statement
            [myMovieTix setLanguage: 'p'];
            
            //printf("language is set to: %c \n \n", [myMovieTix getLanguage]);//debug statement
            
            [myMovieTix getLanguageMenu]; //display order menu in user's language
            
            scanf("\n%c", &m);
            //printf("\n m is: %c \n", m);//debug statement
            
            if(m == '1' && [myMovieTix errorCheckOrderMenu: m])
            {
                printf("Quantos bilhetes que você quer comprar: ");
                
                while(!(scanf("\n%i", &p) == true))
                {
                    printf("Por favor, insira novamente a quantidade de bilhetes que deseja comprar! \n");
                    fpurge(stdin);
                }
                
                [myMovieTix setTicketQty: p];
                
                printf("Você é um membro da Royal Crown? Enter (Y or N)");
                printf("Introduzir a sua selecção: ");
                
                while(!(scanf("\n%c", &rm) == 1))
                {
                    printf("Por favor introduzca Y or N)");
                }
                
                if(rm == 'Y' || rm == 'y' || rm == 'N' || rm == 'n')
                {
                    if(rm == 'Y' || rm == 'y')
                    {
                        [myMovieTix setMembership: true];
                        [myMovieTix setDiscount: 5];
                    }
                    else if(rm == 'N' || rm == 'n')
                    {
                        [myMovieTix setMembership: false];
                        [myMovieTix setDiscount: 0];
                    }
                }
                
                AmtDue = [myMovieTix getCostOfPurchase];
                retail = p * 10.0;
                savings = retail - AmtDue;
                
                printf("Obrigado por sua compra!!!!");
                printf("Seu total é: %4.2f \n", AmtDue);
                printf("Você salvou %4.2f hoje! \n \n", savings);
                
                if([myMovieTix getMembership] == true)
                {
                    printf("***Pipoca pequeno Livre***");
                }
                
            }
            else if(m == '2' && [myMovieTix errorCheckOrderMenu: m])
            {
                exit(0);
            }
        }
        else
        {
            printf("This is a secret portal to another location in time and space, you shouldn't be this deep inside of the program...");
        }
    }
    return 0;
}

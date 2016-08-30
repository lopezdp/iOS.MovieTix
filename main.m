//
//  main.m
//  MovieTixPOS
//
//  Created by David P. Lopez on 8/30/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

bool errorCheck (char *c)
{
    char e[1];
    char s[2];
    char p[3];
    
    if(strcmp(c,e) != 0 || strcmp(c,s) != 0 || strcmp(c,p) != 0)
    {
        printf("Please retry your selection...");
        return false;
    }
    else
    {
        return true;
    }
    
}

int langLoop (char lang)
{
    char *ptrLang;
    ptrLang = &lang;
    int menuSelect;
    
    for(int i = 0; i < 6; i++)
    {
        if(errorCheck(ptrLang) == false)
        {
            continue;
        }
        else if(errorCheck(ptrLang) == true)
        {
            menuSelect = (int) &lang;
            break;
        }
        else
        {
            menuSelect = 1;
            break;
        }
    }
    
    return menuSelect;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char l;
    
        
        printf("Welcome to the Regal Entertainment Group Movie Ticket System.\n \n");
        printf("Please select your language settings from one of the following options: \n \n");
        printf("\t 1. English \n");
        printf("\t 2. Spanish \n");
        printf("\t 3. Portuguese \n");
        
        scanf("%c", &l);
        
        langLoop (l);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}

/* 
 * File:   main.c
 * Author: parveenk
 *
 * Created on March 7, 2013, 11:28 AM
 */

#include "calc.h"
#include "src1.h"
#include "src2.h"


int main() {
    
    int val1,val2,res,ch;
    
    printf("Enter 2 values: ");
    scanf("%d %d",&val1,&val2);
    
    printf("Menu(Integer calculator)\n------\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n5. Exit\nEnter your choice: ");
    scanf("%d",&ch);
    
    do{
        switch(ch)
        {
            case 1:
                res=addition(val1,val2);
                print("Result of addition",res);
                break;
            case 2:
                res=subtraction(val1,val2);
                print("Result of subtraction",res);
                break;
            case 3:
                res=multiplication(val1,val2);
                print("Result of multiplication",res);
                break;
            case 4:
                res=division(val1,val2);
                print("Result of division",res);
                break;
            case 5:
                break;
            default:
                printf("Wrong choice!! Try again!!\n");
        }
        if(ch==5)
            break;
        printf("Menu(Integer calculator)\n------\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n5. Exit\nEnter your choice: ");
        scanf("%d",&ch);
    }while(ch!=5);
    
    return (EXIT_SUCCESS);
}

void print(const char* msg, int val)
{
    printf("%s: %d\n",msg,val);
}

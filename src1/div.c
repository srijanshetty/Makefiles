/* 
 * File:   div.c
 * Author: parveenk
 *
 * Created on March 7, 2013, 11:31 AM
 */

#include"src1.h"
#include"src2.h"

int division(int a, int b)
{
    int res=0;
    while(a>=b)
    {
        a=subtraction(a,b);
        res++;
    }
    return res;
}


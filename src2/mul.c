/* 
 * File:   mul.c
 * Author: parveenk
 *
 * Created on March 7, 2013, 11:31 AM
 */

#include"src1.h"
#include"src2.h"

int multiplication(int a, int b)
{
    int t=b,res=0;
    while(t)
    {
        res=addition(res,a);
        t--;
    }
    return res;
}

#include "capi.h"
#include "lib.h"

int c_randomNumber()
{
    auto ptr = new MyFancyClass();
    auto result = ptr->randomNumber();
    delete ptr;
    return result;
}
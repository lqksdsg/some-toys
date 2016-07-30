#include <stdio.h>
#include <string.h>
#include <math.h>
#include <malloc.h>
#include <assert.h>

#define BUCKET_SIZE 701
#define HASH(i) (i%BUCKET_SIZE)

typedef struct list{
    int value;
    struct list *next;
}list;

int strToNumber(const char *str)
{
    int len = strlen(str);
    int res = 0;
    while(len){
        res += (int)(*str++) * pow(128,--len);
    }
    return res;
}

char* numberToStr(int num)
{
    int len = log(num)/log(128)+1;
    char *a = (char *)malloc((len+1)*sizeof(char));
    a[len] = '\0';
    memset(a,0,len+1);
    while(num!=0)
    {
        a[--len] = num%128;
        num/=128;
    }
    assert(len==0);
    return a;
}

void insertToTable(int num,list *List[])
{
    list *newValue = (list *)malloc(sizeof(list));
    newValue->value = num;
    newValue->next = NULL;
    int hashcode = HASH(num);
    list* tmp = List[hashcode];
    List[hashcode] = newValue;
    List[hashcode]->next = tmp;
}

list* getValfromTable(int num, list* List[])
{
    int hashcode = HASH(num);
    list *val = List[hashcode];
    while(val!=NULL)
    {
        if(val->value == num)
            return val;
        else
        {
            val = val->next;
        }
    }
    printf("can't found value %d\n",num);
    return NULL;
}

int main()
{
    list *hashTable[701]={NULL};
    int i;
    for(i=0;i<5000;++i)
    {
        insertToTable(i,hashTable);
    }
    insertToTable(10000,hashTable);

    list *val = getValfromTable(343,hashTable);
    if(val)
        printf("find value %d\n",val->value);
    return 0;
}

//
//  main.m
//  stack
//
//  Created by mac on 16/5/6.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int elemType;
#define MAXSIZE 1024
typedef struct stack{
    elemType data[MAXSIZE];
    int top;
}Stack;

Stack * initWithStack(Stack *s){
    s = (Stack *)malloc(sizeof(Stack));
    s->top = 0;
    return s;
}

void insertWithStack(Stack *s ,elemType e){
    s->top++;
    s->data[s->top] = e;
}

void printfStack(Stack *s){
    printf("%d \n",s->top);
    for (int i = 1; i < s->top + 1; i++) {
        printf("%d  ",s->data[i]);
    }
    printf("\n");
}

void deleteStack(Stack *s ,elemType e) {
    while (s->top) {
        e = s->data[s->top];
        s->top--;
    }
}

int main(int argc, const char * argv[]) {
    Stack *s;
    s = initWithStack(s);
    for (int i = 0; i < 10; i++) {
        insertWithStack(s, i);
    }
    printfStack(s);
    deleteStack(s,0);
    printfStack(s);
    return 0;
}

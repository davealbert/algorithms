//
//  main.m
//  algorithms
//
//  Created by Dave Albert on 22/05/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sort.h"

#define ARRAY_SIZE 100

int main(int argc, const char * argv[]) {
  
  @autoreleasepool {
    printf("Running...\n");
    NSMutableArray *randomIntegers = [Sort randomIntegerArrayOfLength:ARRAY_SIZE];
    [Sort dumpArray:randomIntegers];    
    [Sort bubbleSortArray:randomIntegers];
    [Sort dumpArray:randomIntegers];

  }
  return 0;
}


//
//  main.m
//  algorithms
//
//  Created by Dave Albert on 22/05/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sort.h"

#define ARRAY_SIZE 10000

int main(int argc, const char * argv[]) {

  @autoreleasepool {
    printf("Running...\n");

    NSMutableArray *bubble = [Sort randomIntegerArrayOfLength:ARRAY_SIZE];
    NSMutableArray *quick = [[NSMutableArray alloc]initWithArray:[bubble copy]];

    NSDate *start = [NSDate date];
    [Sort bubbleSortArray:bubble];
    NSDate *end = [NSDate date];
    NSLog(@"Bubble End %@: %f",[Sort verifyArray:bubble]?@"OK":@"Error!",[end timeIntervalSinceDate:start]);

    start = [NSDate date];
    [Sort quickSortArray:quick start:0 end:(int)[quick count]-1];
    end = [NSDate date];
    NSLog(@" Quick End %@: %f",[Sort verifyArray:quick]?@"OK":@"Error!",[end timeIntervalSinceDate:start]);

  }
  return 0;
}


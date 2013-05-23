//
//  Sort.m
//  algorithms
//
//  Created by Dave Albert on 22/05/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "Sort.h"

@implementation Sort

#pragma mark - Setup Methods

+ (NSMutableArray *)randomIntegerArrayOfLength:(int)length {
  NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:length];

  for (int i=0; i<length; i++) {
    [arr addObject:[NSNumber numberWithInt:arc4random() % length]];
  }
  return arr;
}

#pragma mark - Output Methods 

+ (void)dumpArray:(NSArray *)array {
  NSString *string = [[NSMutableString alloc] init];
  int length = (int)[array count];

  for (int i=0; i<length; i++) {
    string = [string stringByAppendingFormat:@"%d, ",[[array objectAtIndex:i] intValue]];
  }

  // Remove last comma and space
  string = [string substringToIndex:[string length]-2];
  NSLog(@"%@",string);
}

+ (BOOL)verifyArray:(NSArray *)array {
  BOOL isOK = YES;

  // TODO: see if this loop can be improved
  for (int i=0; i<[array count]-2; i++) {
    if ([[array objectAtIndex:i] isGreaterThan:[array objectAtIndex:i+1]]) {
      NSAssert(0, @"**  verifyArray:NO  Sort failed  **");
      isOK = NO;
    }
  }

  return isOK;
}

#pragma mark - Suppoting Methods

+ (void)swapElementsInArray:(NSMutableArray *)originalArray atPosition1:(int)x andPosition2:(int)y {
  NSNumber *temp = [originalArray objectAtIndex:x];
  [originalArray replaceObjectAtIndex:x withObject:[originalArray objectAtIndex:y]];
  [originalArray replaceObjectAtIndex:y withObject:temp];

}

#pragma mark - Bubble Sort

+ (void)bubbleSortArray:(NSMutableArray *)originalArray {
  int length = (int)[originalArray count] - 1;
  for (int i=length; i>=0; i--) {
    for (int j=i-1; j>=0; j--) {
      if ([[originalArray objectAtIndex:j] isGreaterThan:[originalArray objectAtIndex:i]]) {
        //swap
        [Sort swapElementsInArray:originalArray atPosition1:i andPosition2:j];
      }
    }
  }
}

#pragma mark - Quick Sort

+ (int)partitionArray:(NSMutableArray *)originalArray start:(int)start end:(int)end {
  int pivot, i, j;

  pivot = [[originalArray objectAtIndex:start]intValue];
  i = start;
  j = end + 1;

  while (true) {
    do ++i; while( [[originalArray objectAtIndex:i] intValue] <= pivot && i<end );
   	do --j; while( [[originalArray objectAtIndex:j] intValue] > pivot );
    if (i>=j) break;
    [Sort swapElementsInArray:originalArray atPosition1:i andPosition2:j];
  }
  [Sort swapElementsInArray:originalArray atPosition1:start andPosition2:j];

  return j;
}

+ (void)quickSortArray:(NSMutableArray *)originalArray start:(int)start end:(int)end {
  int j;
  if (start < end) {
    j = [Sort partitionArray:originalArray start:start end:end];
    [Sort quickSortArray:originalArray start:start end:j-1];
    [Sort quickSortArray:originalArray start:j+1 end:end];
  }
}

#pragma mark - Merge Sort

@end

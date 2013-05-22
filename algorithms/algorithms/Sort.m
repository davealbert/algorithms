//
//  Sort.m
//  algorithms
//
//  Created by Dave Albert on 22/05/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import "Sort.h"

@implementation Sort

+ (NSMutableArray *)randomIntegerArrayOfLength:(int)length {
  NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:length];

  for (int i=0; i<length; i++) {
    [arr addObject:[NSNumber numberWithInt:arc4random() % length]];
  }
  return arr;
}

+ (void)dumpArray:(NSArray *)array {
  NSString *string = [[NSMutableString alloc] init];
  int length = (int)[array count];

  for (int i=0; i<length; i++) {
    string = [string stringByAppendingFormat:@"%d, ",[[array objectAtIndex:i] intValue]];
  }

  // Remove last comma and space
  string = [string substringToIndex:[string length]-2];
  NSLog(@"\n%@\n\n",string);
}

+ (NSMutableArray *)bubbleSortArray:(NSMutableArray *)originalArray {
  int length = (int)[originalArray count] - 1;

  for (int i=length; i>=0; i--) {
    for (int j=i-1; j>=0; j--) {
      if ([[originalArray objectAtIndex:j] isGreaterThan:[originalArray objectAtIndex:i]]) {
        //swap
        NSNumber *temp = [originalArray objectAtIndex:j];
        [originalArray replaceObjectAtIndex:j withObject:[originalArray objectAtIndex:i]];
        [originalArray replaceObjectAtIndex:i withObject:temp];
      }
    }
  }

  return originalArray;
}

@end

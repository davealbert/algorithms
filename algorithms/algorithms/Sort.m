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
  
  for (int i=0; i<[array count]; i++) {
    string = [string stringByAppendingFormat:@"%d, ",[[array objectAtIndex:i] intValue]];
  }
  
  // Remove last comma and space
  string = [string substringToIndex:[string length]-2];
  NSLog(@"\n%@\n\n",string);
}

@end

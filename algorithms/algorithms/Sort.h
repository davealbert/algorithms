//
//  Sort.h
//  algorithms
//
//  Created by Dave Albert on 22/05/2013.
//  Copyright (c) 2013 Dave Albert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sort : NSObject

+ (NSMutableArray *)randomIntegerArrayOfLength:(int)length;
+ (void)dumpArray:(NSArray *)array;
+ (BOOL)verifyArray:(NSArray *)array;

+ (void)bubbleSortArray:(NSMutableArray *)originalArray;
+ (void)quickSortArray:(NSMutableArray *)originalArray start:(int)start end:(int)end;

@end

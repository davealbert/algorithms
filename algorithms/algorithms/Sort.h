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
+ (NSMutableArray *)bubbleSortArray:(NSMutableArray *)originalArray;

@end

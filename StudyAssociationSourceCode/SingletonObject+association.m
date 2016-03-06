//
//  SingletonObject+association.m
//  StudyAssociationSourceCode
//
//  Created by xuqianlong on 16/3/6.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import "SingletonObject+association.h"
#import <objc/runtime.h>

static char keyAddress;

@implementation SingletonObject (association)

- (void)setTestAddNum:(NSNumber *)testAddNum
{
    objc_setAssociatedObject(self, &keyAddress, testAddNum, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSNumber *)testAddNum
{
   NSLog(@"@implementation之外的 association key:%p",&keyAddress);
   NSNumber *value = objc_getAssociatedObject(self, &keyAddress);
   return value;
}

@end

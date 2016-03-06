//
//  SingletonObject.m
//  StudyAssociationSourceCode
//
//  Created by xuqianlong on 16/3/5.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import "SingletonObject.h"

static char testKeyAddress1;

@implementation SingletonObject

static id instance;

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc]init];
    });
    return instance;
}

static char testKeyAddress2;

- (NSString *)description
{
    static char testKeyAddress3;

    NSString *str = [NSString stringWithFormat:
                     @"\n-------------"
                     @"\n%@类\n起始地址:%p"
                     @"\n结束地址:%p"
                     @"\n类方法的地址:%p\n"
                     @"\n@implementation之外的静态变量地址:%p"
                     @"\n@implementation之内，方法之外静态变量地址:%p"
                     @"\n方法内的静态变量地址:%p\n"
                     @"\n对象的起始地址:%p"
                     @"\n对象的结束地址:%p"
                     @"\n-------------\n",
                     NSStringFromClass([self class]),[self class],
                     (long)[self class] + sizeof([self class]),
                     [[self class]methodForSelector:@selector(sharedInstance)],
                     &testKeyAddress1,
                     &testKeyAddress2,
                     &testKeyAddress3,
                     self,
                     (long)self + sizeof(self)];
    return str;
}

@end

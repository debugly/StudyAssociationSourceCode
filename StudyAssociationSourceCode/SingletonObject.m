//
//  SingletonObject.m
//  StudyAssociationSourceCode
//
//  Created by xuqianlong on 16/3/5.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import "SingletonObject.h"

static char testKeyAddress_outof_imp;

@implementation SingletonObject

static id instance;

char testKeyAddress4;

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc]init];
    });
    return instance;
}

static char testKeyAddress_within_imp;
//test 全局变量
char testKeyAddress_global_within_imp;

- (NSString *)description
{
    static char testKeyAddress_within_method;

    NSString *str = [NSString stringWithFormat:
                     @"\n-------------"
                     @"\n类方法的地址:%p\n"
                     @"\n%@类\n起始地址:%p"
                     @"\n结束地址:%p"
                     @"\n@implementation之内，方法之外全局变量地址%p\n"
                     
                     @"\n实例方法内的静态变量地址:%p"
                     @"\n@implementation之外，静态变量地址:%p"
                     @"\n@implementation之内，方法之外静态变量地址:%p\n"
                     
                     @"\n对象的起始地址:%p"
                     @"\n对象的结束地址:%p"
                     @"\n-------------\n",
                     
                     [[self class]methodForSelector:@selector(sharedInstance)],
                     NSStringFromClass([self class]),[self class],
                     (long)[self class] + sizeof([self class]),
                     &testKeyAddress_global_within_imp,
                     
                     &testKeyAddress_within_method,
                     &testKeyAddress_outof_imp,
                     &testKeyAddress_within_imp,
                    
                     self,
                     (long)self + sizeof(self)];
    return str;
}

@end

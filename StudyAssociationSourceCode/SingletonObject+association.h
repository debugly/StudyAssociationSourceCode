//
//  SingletonObject+association.h
//  StudyAssociationSourceCode
//
//  Created by xuqianlong on 16/3/6.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import "SingletonObject.h"

@interface SingletonObject (association)

//通过关联引用给 SingletonObject加上一个 testAddNum 属性；
@property (nonatomic, retain) NSNumber *testAddNum;

@end

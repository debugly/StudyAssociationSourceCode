//
//  SingletonObject.h
//  StudyAssociationSourceCode
//
//  Created by xuqianlong on 16/3/5.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonObject : NSObject

+ (instancetype)sharedInstance;

@end

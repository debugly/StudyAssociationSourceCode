//
//  main.m
//  StudyAssociationSourceCode
//
//  Created by xuqianlong on 16/3/5.
//  Copyright © 2016年 Debugly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonObject.h"
#import "SingletonObject+association.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        SingletonObject *single = [SingletonObject sharedInstance];
        NSLog(@"%@",single);
        single.testAddNum = @(3597);
        NSLog(@"---%@",single.testAddNum);
    }
    return 0;
}

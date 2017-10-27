//
//  Component.m
//  组合模式demo
//
//  Created by hefeiyang on 2017/10/27.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "Component.h"

@implementation Component

- (instancetype)initWithName:(NSString *)name andSize:(float)size {
    if (self = [super init]) {
        _name = name;
        _size = size;
    }
    return self;
}

- (NSString *) getInfo {
    return [NSString stringWithFormat:@"name:%@ | size:%f",_name,_size];
}

@end

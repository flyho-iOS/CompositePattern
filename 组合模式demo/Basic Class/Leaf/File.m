//
//  File.m
//  不用组合模式
//
//  Created by fly on 2017/10/24.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "File.h"

@implementation File

- (instancetype)initWithName:(NSString *)name size:(float)size andType:(NSString *)type{
    if (self = [super init]) {
        _name = name;
        _size = size;
        _type = type;
    }
    return self;
}

- (NSString *)getInfo {
    return [NSString stringWithFormat:@"name:%@.%@ | size:%f",_name,_type,_size];
}

- (void) openFile {
    NSLog(@"打开了%@.%@,吾里鹏鹏开始学习",_name,_type);
}

@end

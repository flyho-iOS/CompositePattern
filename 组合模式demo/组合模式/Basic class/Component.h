//
//  Component.h
//  组合模式demo
//
//  Created by hefeiyang on 2017/10/27.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Component : NSObject

//通用属性
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) float size;
//通用方法
- (instancetype)initWithName:(NSString *)name andSize:(float)size;
- (NSString *) getInfo;

@end

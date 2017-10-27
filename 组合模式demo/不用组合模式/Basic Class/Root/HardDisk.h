//
//  HardDisk.h
//  不用组合模式
//
//  Created by fly on 2017/10/24.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RootProtocol.h"

@interface HardDisk : NSObject <RootProtocol>

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) float size;//单位是G

- (instancetype)initWithName:(NSString *)name andSize:(float)size;

@end

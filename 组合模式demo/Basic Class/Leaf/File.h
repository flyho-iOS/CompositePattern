//
//  File.h
//  不用组合模式
//
//  Created by fly on 2017/10/24.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeafProtocol.h"

@interface File : NSObject <LeafProtocol>

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) float size;
@property (nonatomic,copy) NSString *type;//文件类型

- (instancetype)initWithName:(NSString *)name size:(float)size andType:(NSString *)type;

@end

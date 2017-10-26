//
//  Folder.h
//  不用组合模式
//
//  Created by fly on 2017/10/24.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BranchProtocol.h"

@interface Folder : NSObject <BranchProtocol>

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) float size;

- (instancetype)initWithName:(NSString *)name andSize:(float)size;

@end

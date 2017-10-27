//
//  Composite.h
//  组合模式demo
//
//  Created by hefeiyang on 2017/10/27.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "Component.h"

@interface Composite : Component

- (void)addFile:(Component *)file;

- (NSArray *)getSubdirectory;

@end

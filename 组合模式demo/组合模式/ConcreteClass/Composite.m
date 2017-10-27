//
//  Composite.m
//  组合模式demo
//
//  Created by hefeiyang on 2017/10/27.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "Composite.h"

@interface Composite ()

@property (nonatomic,strong) NSMutableArray *sububdirectory;

@end

@implementation Composite

- (void)addFile:(Component *)file {
    [self.sububdirectory addObject:file];
}

- (NSArray *)getSubdirectory {
    return self.sububdirectory;
}

- (NSMutableArray *)sububdirectory {
    if (!_sububdirectory) {
        _sububdirectory = [NSMutableArray array];
    }
    return _sububdirectory;
}

@end

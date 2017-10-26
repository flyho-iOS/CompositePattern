//
//  HardDisk.m
//  不用组合模式
//
//  Created by fly on 2017/10/24.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "HardDisk.h"

@interface HardDisk ()

@property (nonatomic,strong) NSMutableArray *sububdirectory;

@end

@implementation HardDisk

- (instancetype)initWithName:(NSString *)name andSize:(float)size {
    if (self = [super init]) {
        _name = name;
        _size = size;
    }
    return self;
}

#pragma mark - RootProtocol
- (void)addFile:(id<LeafProtocol>)file {
    [self.sububdirectory addObject:file];
}

- (void)addFolder:(id<BranchProtocol>)folder {
    [self.sububdirectory addObject:folder];
}

- (NSString *)getInfo {
    return [NSString stringWithFormat:@"name:%@ | size:%f",_name,_size];
}

- (NSArray *)getSubdirectory {
    return self.sububdirectory;
}

#pragma mark - getter
- (NSMutableArray *)sububdirectory {
    if (!_sububdirectory) {
        _sububdirectory = [NSMutableArray array];
    }
    return _sububdirectory;
}


@end

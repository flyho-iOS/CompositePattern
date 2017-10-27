//
//  BranchProtocol.h
//  不用组合模式
//
//  Created by fly on 2017/10/24.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LeafProtocol;
@protocol BranchProtocol <NSObject>

- (NSString *) getInfo;
- (void) addFolder:(id<BranchProtocol>)folder;
- (void) addFile:(id<LeafProtocol>)file;
- (NSArray *) getSubdirectory;

@end

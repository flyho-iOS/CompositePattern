//
//  LeafProtocol.h
//  不用组合模式
//
//  Created by fly on 2017/10/24.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LeafProtocol <NSObject>

- (NSString *)getInfo;

- (void) openFile;

@end

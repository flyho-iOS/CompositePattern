//
//  ViewController.m
//  组合模式demo
//
//  Created by fly on 2017/10/26.
//  Copyright © 2017年 flyho. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteDisk.h"
#import "ConcreteFolder.h"
#import "ConcreteFile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self no_CompositePattern];
}

#pragma mark - 不用组合模式示例

- (void) no_CompositePattern {
    //吾力鹏鹏的D盘学习资料最多，我们就来剖析D盘吧...嘻嘻嘻~~wow！！！1T学习资料哦
    ConcreteDisk *d_disk = [[ConcreteDisk alloc] initWithName:@"鹏鹏的D盘" andSize:1024];
    //吾力鹏鹏真勤奋，这么多类型的学习资料
    //这里暂且忽略中间包的n层文件夹吧
    ConcreteFolder *language_Jan = [[ConcreteFolder alloc] initWithName:@"日语学习" andSize:0.5];
    ConcreteFolder *culture_Korea = [[ConcreteFolder alloc] initWithName:@"韩国风俗文化" andSize:0.25];
    //这部小电影...知道文件名叫啥不？so easy...耳熟能详！跟着蜀黍大声读“雅蠛蝶！！！”
    ConcreteFile *video_Jan = [[ConcreteFile alloc] initWithName:@"やめて" size:0.5 andType:@"avi"];
    //其他小电影名字太辣眼睛,这里就不做详细介绍（车牌还是找吾力鹏鹏要）
    ConcreteFile *video_Jan1 = [[ConcreteFile alloc] initWithName:@"小电影1" size:0.5 andType:@"avi"];
    ConcreteFile *video_Jan2 = [[ConcreteFile alloc] initWithName:@"小电影2" size:0.2 andType:@"avi"];
    ConcreteFile *pic_Korea1 = [[ConcreteFile alloc] initWithName:@"小图片1" size:0.02 andType:@"png"];
    ConcreteFile *pic_Korea2 = [[ConcreteFile alloc] initWithName:@"小图片2" size:0.01 andType:@"png"];
    //开始组装树
    [d_disk addFolder:language_Jan];
    [d_disk addFolder:culture_Korea];
    [language_Jan addFile:video_Jan];
    [language_Jan addFile:video_Jan1];
    [language_Jan addFile:video_Jan2];
    [culture_Korea addFile:pic_Korea1];
    [culture_Korea addFile:pic_Korea2];
    //遍历硬盘里面的各个文件（小电影）
    NSLog(@"%@",[d_disk getInfo]);
    [self traverseSubdiretory:[d_disk getSubdirectory]];
}

- (void) traverseSubdiretory:(NSArray *)directory {
    for (id obj in directory) {
        if ([obj conformsToProtocol:@protocol(BranchProtocol)]) {
            id<BranchProtocol>folder = obj;
            NSLog(@"%@",[obj getInfo]);
            //递归遍历
            [self traverseSubdiretory:[folder getSubdirectory]];
        }else{
            id<LeafProtocol>file = obj;
            NSLog(@"%@",[file getInfo]);
        }
    }
}

#pragma mark - 用组合模式示例


@end

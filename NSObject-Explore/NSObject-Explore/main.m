//
//  main.m
//  NSObject-Explore
//
//  Created by 王同学 on 2020/5/25.
//  Copyright © 2020 小王同学. All rights reserved.
//
//int main(int argc, char * argv[]) {
//    NSString * appDelegateClassName;
//    @autoreleasepool {
//        // Setup code that might create autoreleased objects goes here.
//        appDelegateClassName = NSStringFromClass([AppDelegate class]);
//    }
//    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
//}

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

int main(int argc, char * argv[]) {
    NSObject *objc = [[NSObject alloc]init];
    NSLog(@"我们实例化了一个NSObject对象");
//   class_getInstanceSize方法需要引入头文件 #import <objc/runtime.h>
    size_t objc_size = class_getInstanceSize([objc class]);
    //class_getInstanceSize 为获取的成员变量内存大小
    NSLog(@"objc 的成员变量内存大小为：%zd",objc_size);
//    malloc_size方法需要 引入#import <malloc/malloc.h>
//    malloc_size需要一个void *类型 size_t objc_realSize = malloc_size((__bridge const void *)(objc))
    NSLog(@"objc 的内存大小为：%zd",malloc_size((__bridge const void *)(objc)));
    
}


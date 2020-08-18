//
//  ViewController.m
//  MemoryTaggedPointer
//
//  Created by xiekunpeng on 2020/8/5.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
//    [self numTaggerPointer];
//    [self stringTaggerPointer];
//    [self BigOrLongNumStr];
    [self DataType];
    
    


    
    
}



- (void)stringTaggerPointer {
    NSString *str1 = [NSString stringWithFormat:@"a"];
    NSString *str2 = @"a";
    NSString *str3 = [NSString stringWithFormat:@"b"];
    NSString *str4 = @"b";
    NSString *str5 = [NSString stringWithFormat:@"aaaaaaaaaaaaaaaaabc"];
    NSString *str6 = @"abc";

    NSLog(@"%p %p %p %p %p %p %p", str1, &str1, str2, str3, str4, str5, str6);
    
    
}

- (void)numTaggerPointer {

    
    NSNumber *num1 = [NSNumber numberWithInt:1];
    NSNumber *num2 = @(2);
    NSNumber *num3 = @3;
    NSNumber *num4 = @4;
    NSNumber *num5 = @55;
    
    NSLog(@"%p %p %p %p %p", num1, num2, num3, num4, num5);

 }

- (void)BigOrLongNumStr {
    NSNumber *num1 = @(2);
    NSNumber *num2 = @(0xffffffffffffffff);
    
    NSLog(@"%p %p ", num1,num2);

    
 }


- (void)DataType  {
///采用Tagger Pointer存放
NSString *str1 = [NSString stringWithFormat:@"a"];
///采用Tagger Pointer存放
NSString *str2 = [@(1) stringValue];
///存放在数据段
NSString *str3 = @"a";
///存放在数据段
NSString *str4 = @"aaaaaaaaaaaaaaaaabc";
///存放在堆区
NSString *str5 = [NSString stringWithFormat:@"aaaaaaaaaaaaaaaaabc"];

    NSLog(@"%@ %@ %@ %@ %@", [str1 class], [str2 class], [str3 class], [str4 class], [str5 class]);
}












@end

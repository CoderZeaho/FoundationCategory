//
//  ViewController.m
//  FoundationCategoryDemo
//
//  Created by Zeaho on 2017/7/24.
//  Copyright © 2017年 Northeast Dianli University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    NSDictionary *dictionary = @{@"people":@[@{@"name":@"小明", @"age":@25, @"gender":@"male"},
                                             @{@"name":@"小红", @"age":@19, @"gender":@"female"}]
                                 };
    NSLog(@"%@",dictionary);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

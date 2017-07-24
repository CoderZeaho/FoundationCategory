//
//  Foundation+Log.m
//  FoundationCategory
//
//  Created by Zeaho on 2017/7/24.
//  Copyright © 2017年 Northeast Dianli University. All rights reserved.
//

#import <Foundation/Foundation.h>

@implementation NSDictionary (Log)

//重写控制输出系统的方法
-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level{
    
    NSMutableString *string = [NSMutableString string];
    
    [string appendString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [string appendFormat:@"\t%@ : %@,\n", key, obj];
        
    }];
    
    [string appendString:@"}"];
    
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [string deleteCharactersInRange:range];
    }
    
    return string;
}

@end


@implementation NSArray (Log)

-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    
    NSMutableString *string = [NSMutableString string];
    
    [string appendString:@"[\n"];
    
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [string appendFormat:@"\t%@,\n",obj];
    }];

    [string appendString:@"]"];
    
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [string deleteCharactersInRange:range];
    }

    return string;
}

@end

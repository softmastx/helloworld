//
//  NSString+NSString_ConvertWhiteSpace.m
//  helloworld
//
//  Created by Narong Aunthee on 6/17/12.
//  Copyright (c) 2012 Eurocopter thailand . All rights reserved.
//

#import "NSString+NSString_ConvertWhiteSpace.h"

@implementation NSString (NSString_ConvertWhiteSpace)
-(NSString *)convertWhiteSpace:(NSString *)string{
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    return string;
}
@end

//
//  ColorManager.m
//  skybonds_ios
//
//  Created by Dima Bobrov on 12/05/15.
//  Copyright (c) 2015 Skyteam. All rights reserved.
//

#import "JTCalendarColorManager.h"
#import "UIColor+Expanded.h"

@implementation JTCalendarColorManager

+ (instancetype)sharedManager {
    static id manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc]init];
    });
    return manager;
}

- (UIColor *)redColor{
    return [UIColor colorWithRed:208.0 / 255.0
                           green:72.0 / 255.0
                            blue:72.0 / 255.0
                           alpha:1];
}

- (UIColor *) baseCustom {
    return [UIColor colorWithRed:74.0f / 255.0f green:144.0f / 255.0f blue:226.0f / 255.0f alpha:1.0f];
}

//- (UIColor *)greenColor{
//    return [UIColor colorWithRed:61 / 255.0
//                           green:151 / 255.0
//                            blue:133 / 255.0
//                           alpha:1.0];
//}

- (UIColor *)blackColor {
    return [UIColor colorWithRed:34 / 255.0
                           green:34 / 255.0
                            blue:34 / 255.0
                           alpha:1];
}


- (UIColor *)devilColor{
    return [UIColor colorWithRed:102.0 / 255.0
                           green:102.0 / 255.0
                            blue:102.0 / 255.0
                           alpha:1];
}

- (UIColor *)godColor {
    return [UIColor colorWithRed:153.0 / 255.0
                           green:153.0 / 255.0
                            blue:153.0 / 255.0
                           alpha:1];
}

- (UIColor *)lightGrayColor {
    return [UIColor colorWithRed:242.0 / 255.0
                           green:242.0 / 255.0
                            blue:242.0 / 255.0
                           alpha:1];
}


- (UIColor *)grayBorderColor {
    return [UIColor colorWithRed:192.0 / 255.0
                           green:192.0 / 255.0
                            blue:192.0 / 255.0
                           alpha:1];
}

- (UIColor *)grayColor {
    return [UIColor colorWithRed:229.0 / 255.0
                           green:229.0 / 255.0
                            blue:229.0 / 255.0
                           alpha:1];
}

- (UIColor *)silenceColor {
    return [UIColor colorWithRed:199.0 / 255.0
                           green:199.0 / 255.0
                            blue:204.0 / 255.0
                           alpha:1];
}

- (UIColor *)segmentDividerColor {
    return [UIColor colorWithRed:221.0 / 255.0
                           green:221.0 / 255.0
                            blue:221.0 / 255.0
                           alpha:1];
}

- (NSDictionary *)ratingColors {
    return @{@"AAA" : @"#44a4e9",
             @"Aaa" : @"#44a4e9",
             @"AA+" : @"#f17b29",
             @"AA" : @"#f17b29",
             @"AA-" : @"#f17b29",
             @"Aa2" : @"#f17b29",
             @"Aa3" : @"#f17b29",
             @"A+" : @"#ac4ee3",
             @"A" : @"#ac4ee3",
             @"A-" : @"#ac4ee3",
             @"A1" : @"#ac4ee3",
             @"A3" : @"#ac4ee3",
             @"BBB+" : @"#24ae5e",
             @"BBB" : @"#24ae5e",
             @"BBB-" : @"#24ae5e",
             @"Baa1" : @"#24ae5e",
             @"Baa2" : @"#24ae5e",
             @"Baa3" : @"#24ae5e",
             @"BB+" : @"#344992",
             @"BB" : @"#344992",
             @"BB-" : @"#344992",
             @"Ba1" : @"#344992",
             @"Ba2" : @"#344992",
             @"Ba3" : @"#344992",
             @"B+" : @"#ed5964",
             @"B" : @"#ed5964",
             @"B-" : @"#ed5964",
             @"B1" : @"#ed5964",
             @"B2" : @"#ed5964",
             @"B3" : @"#ed5964",
             @"CCC+" : @"#f8c653",
             @"CCC" : @"#f8c653",
             @"CCC-" : @"#f8c653",
             @"Caa1" : @"#f8c653",
             @"Caa2" : @"#f8c653",
             @"Caa3" : @"#f8c653",
             @"CC" : @"#c3752c",
             @"Ca" : @"#c3752c",
             @"C" : @"#ae3913",
             @"C" : @"#ae3913",
             @"D" : @"#808080",
             };
}

- (NSString *)randomColor{
    NSArray *colors = @[@"#e5b5bb",
                        @"#a8ccde",
                        @"#e3b086",
                        @"#9299b1"];
    NSInteger randomNumber = arc4random_uniform((unsigned int)colors.count);
    return colors[randomNumber];
}

- (NSString *)ratingStringColorForKey:(NSString *)key{
    return [self ratingColors][key];
}

- (UIColor *)ratingColorForKey:(NSString *)key{
    if (!key) {
        return [UIColor grayColor];
    }
    NSDictionary *colors = [self ratingColors];
    NSString *ratingColor = colors[key];
    UIColor *color;
    
    if (ratingColor.length) {
        color = [UIColor colorWithHexString:ratingColor];
    } else {
        color = [UIColor grayColor];
    }
    
    return color;
}

- (UIFont *)fontWithSize:(NSInteger)size {
    UIFont *font =  [UIFont fontWithName:@"SFUIDisplay-Regular" size:size];
    return font;
}

- (UIFont *)mediumFontWithSize:(NSInteger)size {
    return [UIFont fontWithName:@"SFUIDisplay-Medium" size:size];
}

- (UIFont *)semiboldFontWithSize:(NSInteger)size {
    return [UIFont fontWithName:@"SFUIDisplay-Semibold" size:size];
}

- (UIFont *)boldFontWithSize:(NSInteger)size {
    return [UIFont fontWithName:@"SFUIDisplay-Bold" size:size];
}

@end

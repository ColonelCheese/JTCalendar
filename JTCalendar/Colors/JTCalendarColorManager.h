//
//  ColorManager.h
//  skybonds_ios
//
//  Created by Dima Bobrov on 12/05/15.
//  Copyright (c) 2015 Skyteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JTCalendarColorManager : NSObject

+ (instancetype)sharedManager;

//- (UIColor *)greenColor;
- (UIColor *)baseCustom;
- (UIColor *)grayColor;
- (UIColor *)redColor;
- (UIColor *)blackColor;
- (UIColor *)devilColor; // #666666
- (UIColor *)godColor; // 999999
- (UIColor *)silenceColor; // #cccccc
- (UIColor *)lightGrayColor;
- (NSString *)ratingStringColorForKey:(NSString *)key;
- (UIColor *)ratingColorForKey:(NSString *)key;

- (UIColor *)grayBorderColor;
- (UIColor *)segmentDividerColor;

- (UIFont *)fontWithSize:(NSInteger)size;
- (UIFont *)mediumFontWithSize:(NSInteger)size;
- (UIFont *)semiboldFontWithSize:(NSInteger)size;
- (UIFont *)boldFontWithSize:(NSInteger)size;

@end

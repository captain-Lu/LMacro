//
//  KLMacro.h
//  LMacro
//
//  Created by captain on 2020/11/23.
//

#import <Foundation/Foundation.h>
#import "KLMacroTool.h"

@interface KLMacro : NSObject

#pragma mark - 尺寸

/**设备宽度*/
#define DEVICE_WIDTH [KLMacro DEVICE_WIDTH]

/**设备高度*/
#define DEVICE_HEIGHT [KLMacro DEVICE_HEIGHT]

/**尺寸缩放*/
#define Scale(length)  [KLMacro deviceScale:length]

//安全区域相关
#define IphoneX_SafeAreaTop  [KLMacro IphoneX_SafeAreaTop]

#define IphoneX_SafeAreaBottom [KLMacro IphoneX_SafeAreaBottom]

#define IphoneX_SafeAreaLeft [KLMacro IphoneX_SafeAreaLeft]

#define IphoneX_SafeAreaRight [KLMacro IphoneX_SafeAreaRight]

#pragama mark - 颜色

#define kHexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define kRGBAlpha(r, g, b, a) [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:(a)]

#define kHexRGBA(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

@end


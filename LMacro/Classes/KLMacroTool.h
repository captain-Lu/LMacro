//
//  KLMacroTool.h
//  LMacro
//
//  Created by captain on 2020/11/24.
//

#import <Foundation/Foundation.h>

@interface KLMacroTool : NSObject

#pragma mark - 尺寸相关

/**设备宽*/
+(float)DEVICE_WIDTH;

/**设备高*/
+(float)DEVICE_HEIGHT;

/// 根据当前的设备尺寸做统一尺寸的缩放
/// @param length 长度
+(float)deviceScale:(float)length;

/// 顶部安全距离
+(float)IphoneX_SafeAreaTop;

///底部安全距离
+(float)IphoneX_SafeAreaBottom;

///左边安全距离
+(float)IphoneX_SafeAreaLeft;

///右边安全距离
+(float)IphoneX_SafeAreaRight;

#pragma mark - 设备相关

/**是否是iPhone*/
+(BOOL)IS_IPhone;

/**是否是iPhoneX*/
+(BOOL)IS_IPhoneX;

/**是否为iPad*/
+(BOOL)IS_IPad;


@end

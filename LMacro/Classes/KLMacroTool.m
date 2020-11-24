//
//  KLMacroTool.m
//  LMacro
//
//  Created by captain on 2020/11/24.
//

#import "KLMacroTool.h"

@implementation KLMacroTool

#pragma mark - 尺寸

/**设备宽*/
+(float)DEVICE_WIDTH{
    return [UIScreen mainScreen].bounds.size.width;
}

/**设备高*/
+(float)DEVICE_HEIGHT{
    return [UIScreen mainScreen].bounds.size.height;
}

/// 根据设备做长度的缩放
/// @param length 长度
/// 依据设备最小边做缩放
+(float)deviceScale:(float)length{
    float rate = 1.0;
    
    if ([KLMacroTool IS_IPad]) {
        CGFloat min = [KLMacroTool DEVICE_WIDTH] > [KLMacroTool DEVICE_HEIGHT] ? [KLMacroTool DEVICE_HEIGHT] : [KLMacroTool DEVICE_WIDTH];
        rate = min/768.0f * rate;
        
    }else
    {
        CGFloat min = [KLMacroTool DEVICE_WIDTH]  > [KLMacroTool DEVICE_HEIGHT] ? [KLMacroTool DEVICE_HEIGHT] : [KLMacroTool DEVICE_WIDTH] ;
        rate = min/375.0f * rate;
    }
    return rate * length;

}

+(float)IphoneX_SafeAreaTop{
 
    return (@available(iOS 11.0, *) == YES ? [[[UIApplication sharedApplication] delegate] window].safeAreaInsets.top : 0);
}

+(float)IphoneX_SafeAreaBottom{
    return (@available(iOS 11.0, *) == YES ? [[[UIApplication sharedApplication] delegate] window].safeAreaInsets.bottom : 0);
}

+(float)IphoneX_SafeAreaLeft{
    return  (@available(iOS 11.0, *) == YES ? [[[UIApplication sharedApplication] delegate] window].safeAreaInsets.left : 0);
}

+(float)IphoneX_SafeAreaRight{
    return (@available(iOS 11.0, *) == YES ? [[[UIApplication sharedApplication] delegate] window].safeAreaInsets.right : 0);
}

/**是否是iPhone*/
+(BOOL)IS_IPhone{
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

/**是否为iPad*/
+(BOOL)IS_IPad{
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}

+ (BOOL)IS_IPhoneX{
    return [KLMacroTool getCurrentDeviceIsIPhoneXOrNewer];
}

/** 获取当前设备是否iPhoneX或以上 , NO= 普通iPhone  YES=iPhoneX或以上 */
+(BOOL)getCurrentDeviceIsIPhoneXOrNewer{
    if ([KLMacroTool IS_IPad] == NO) {
        
        if (@available(iOS 11.0, *)) {
            
            UIWindow * window = [[[UIApplication sharedApplication] delegate] window];
            
            if (window.safeAreaInsets.bottom > 0.0) {
                
                return YES;
            }
        }
    }
    return NO;
}

@end

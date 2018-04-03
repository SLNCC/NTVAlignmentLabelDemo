
//
//  VerticalLabel.h
//  UILabel的属性
//
//  Created by 乔冬 on 16/4/25.
//  Copyright © 2016年 XinHuaTV. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM (NSInteger ,VerticalAlignment){
    VerticalAlignmentTop = 0,  //上居中
    VerticalAlignmentMiddle, //中居中 //暂无操作
    VerticalAlignmentBottom //低居中
};
@interface VerticalLabel : UILabel
{
    @private
    VerticalAlignment _verticalAlignment;
}
@property (nonatomic,assign)VerticalAlignment verticalAlignment;
@end

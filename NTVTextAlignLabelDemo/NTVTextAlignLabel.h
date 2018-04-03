//
//  NTVTextAlignLabel.h
//  NTVTextAlignLabelDemo
//
//  Created by 乔冬 on 2018/3/2.
//  Copyright © 2018年 XinHuaTV. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    NTVTextAlignmentMiddle = 0 ,      //居中
    NTVTextAlignmentLeftMiddle ,    //垂直居中或者左边居中
    NTVTextAlignmentRightMiddle ,  //水平居中或者右边居中
    NTVTextAlignmentLeftTop ,      //左上
    NTVTextAlignmentRightTop,     //右上
    NTVTextAlignmentLeftBottom,    //左下
    NTVTextAlignmentRightBottom, //右下
} NTVTextAlignment;

@interface NTVTextAlignLabel : UILabel
{
@private
    NTVTextAlignment _ntvTextAlignment;
}
@property (nonatomic,assign)NTVTextAlignment ntvTextAlignment;
@end

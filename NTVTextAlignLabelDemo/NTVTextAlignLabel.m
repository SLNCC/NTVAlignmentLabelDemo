//
//  NTVTextAlignLabel.m
//  NTVTextAlignLabelDemo
//
//  Created by 乔冬 on 2018/3/2.
//  Copyright © 2018年 XinHuaTV. All rights reserved.
//

#import "NTVTextAlignLabel.h"

@implementation NTVTextAlignLabel
@synthesize ntvTextAlignment = _ntvTextAlignment;
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
            self.ntvTextAlignment = NTVTextAlignmentMiddle;
    }
    return self;
}
-(void)setNtvTextAlignment:(NTVTextAlignment)ntvTextAlignment{
    _ntvTextAlignment = ntvTextAlignment;
    [self setNeedsDisplay];
}
-(CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.ntvTextAlignment) {
        case NTVTextAlignmentMiddle:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
            textRect.origin.x = bounds.origin.x  +  (bounds.size.width - textRect.size.width)/2.0;
            break;
        case NTVTextAlignmentLeftMiddle:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
            break;
        case NTVTextAlignmentRightMiddle:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
            textRect.origin.x = bounds.origin.x + bounds.size.width - textRect.size.width;
            break;
        case NTVTextAlignmentLeftTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case NTVTextAlignmentRightTop:
            textRect.origin.y = bounds.origin.y;
            textRect.origin.x = bounds.origin.x + bounds.size.width - textRect.size.width;
            break;
        case NTVTextAlignmentLeftBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case NTVTextAlignmentRightBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
           textRect.origin.x = bounds.origin.x + bounds.size.width - textRect.size.width;
            break;
    }
    return textRect;
}

-(void)drawTextInRect:(CGRect)rect{
    CGRect actualRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

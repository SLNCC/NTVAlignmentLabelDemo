//
//  ViewController.m
//  NTVTextAlignLabelDemo
//
//  Created by 乔冬 on 2018/3/2.
//  Copyright © 2018年 XinHuaTV. All rights reserved.
//

#import "ViewController.h"
#import "NTVTextAlignLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NTVTextAlignLabel *textLabel = [[NTVTextAlignLabel alloc]initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20, 35)];
    textLabel.numberOfLines = 1;
    textLabel.font = [UIFont systemFontOfSize:15];
    textLabel.text = @"一条虫";
    textLabel.backgroundColor = [UIColor lightGrayColor];
    textLabel.textColor = [UIColor greenColor];
    textLabel.ntvTextAlignment = NTVTextAlignmentMiddle;
    [self.view addSubview:textLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  ZHYToolbar.m
//  ZYHKeyboard
//
//  Created by 骊蘅 on 2018/3/15.
//  Copyright © 2018年 ZYH. All rights reserved.
//

#import "ZHYToolbar.h"
@interface ZHYToolbar()

@end

@implementation ZHYToolbar

- (UIButton *)doneBtn{
    if (!_doneBtn) {
        
        _doneBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneBtn.frame =  CGRectMake(4, 5, 60, 25);
        [_doneBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        
        [_doneBtn setTitle:@"完成" forState:UIControlStateNormal];

    }
    return _doneBtn;
    
}
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        [self setBarStyle:UIBarStyleDefault];
        
        UIBarButtonItem * btnSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
        
        UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc]initWithCustomView:self.doneBtn];
        NSArray * buttonsArray = [NSArray arrayWithObjects:btnSpace,doneBtn,nil];
        [self setItems:buttonsArray];
        
        
    }
    return self;
}



@end

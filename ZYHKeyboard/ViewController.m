//
//  ViewController.m
//  ZYHKeyboard
//
//  Created by 骊蘅 on 2018/3/15.
//  Copyright © 2018年 ZYH. All rights reserved.
//

#import "ViewController.h"
#import "ZHYToolbar.h"
@interface ViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) UITextField * textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZHYToolbar *bar = [[ZHYToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    [bar.doneBtn addTarget:self action:@selector(dismissKeyBoard) forControlEvents:UIControlEventTouchUpInside];
    
    UITextField * textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 300, 200, 50)];
    textField.backgroundColor = [UIColor redColor];
    textField.keyboardType = UIKeyboardTypeNumberPad;
    textField.delegate = self;
    self.textField = textField;
    [textField setInputAccessoryView:bar];
    
    [self.view addSubview:textField];
    
}

- (void)dismissKeyBoard{
    
    
    [self.textField resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

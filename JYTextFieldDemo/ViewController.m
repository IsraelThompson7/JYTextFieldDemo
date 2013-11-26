//
//  ViewController.m
//  JYTextFieldDemo
//
//  Created by kinglate on 13-1-24.
//  Copyright (c) 2013年 joyame. All rights reserved.
//

#import "ViewController.h"
#import "JYTextField.h"

#define RGB(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[btn setTintColor:RGB(139, 23, 43)];
	[btn setFrame:CGRectMake(20, 20, 100, 40)];
	[btn setTitle:@"失去焦点" forState:UIControlStateNormal];
	[btn addTarget:self action:@selector(doClick:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:btn];
	_txt1 = [[JYTextField alloc]initWithFrame:CGRectMake(30, 100, 260, 38)
								  cornerRadio:5
								  borderColor:RGB(166, 166, 166)
								  borderWidth:2
								   lightColor:RGB(55, 154, 255)
									lightSize:8
							 lightBorderColor:RGB(235, 235, 235)];
	[_txt1 setClearButtonMode:UITextFieldViewModeWhileEditing];
	[_txt1 setPlaceholder:@"用户名"];
	[self.view addSubview:_txt1];
	_txt2 = [[JYTextField alloc]initWithFrame:CGRectMake(30, 170, 260, 38)
								  cornerRadio:5
								  borderColor:RGB(166, 166, 166)
								  borderWidth:2
								   lightColor:RGB(243, 168, 51)
									lightSize:8
							 lightBorderColor:RGB(235, 235, 235)];
	[_txt2 setClearButtonMode:UITextFieldViewModeWhileEditing];
	[_txt2 setPlaceholder:@"密码"];
	[_txt2 setSecureTextEntry:YES];
	[self.view addSubview:_txt2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doClick:(id)sender
{
	[_txt1 resignFirstResponder];
	[_txt2 resignFirstResponder];
}
@end

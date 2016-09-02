//
//  ViewController.m
//  MarqueeViewDemo
//
//  Created by LI on 16/9/2.
//  Copyright © 2016年 LI. All rights reserved.
//

#import "ViewController.h"

#import "MarqueeView.h"

@interface ViewController ()

@property (strong, nonatomic) MarqueeView *marquee;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.marquee = [[MarqueeView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100) withTitle:@"拿啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥啥啥便宜 买啥～～ " withDirection:MarqueeViewHorizontalStyle];
    self.marquee.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.marquee];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((self.view.frame.size.width-100)/2, 200, 100, 50);
    [button addTarget:self action:@selector(stopPaoma:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"停止" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:button];
    
    
    UIButton *buttona = [UIButton buttonWithType:UIButtonTypeCustom];
    buttona.frame = CGRectMake((self.view.frame.size.width-100)/2, 300, 100, 50);
    [buttona addTarget:self action:@selector(startPaoMa:) forControlEvents:UIControlEventTouchUpInside];
    [buttona setTitle:@"开始" forState:UIControlStateNormal];
    [buttona setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:buttona];
}

- (void)stopPaoma:(UIButton*)sender
{
    [self.marquee stop];
}

- (void)startPaoMa:(UIButton*)sender
{
    [self.marquee start];
}

@end

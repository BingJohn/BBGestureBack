//  代码地址: https://github.com/Bonway/BBGestureBack
//  BBGestureBack
//  Created by Bonway on 2016/3/17.
//  Copyright © 2016年 Bonway. All rights reserved.
//


#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *popBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 150, 50)];
    popBtn.backgroundColor = [UIColor redColor];
    [popBtn setTitle:@"BBPop" forState:UIControlStateNormal];
    [popBtn addTarget:self action:@selector(popClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popBtn];
    
    UIButton *popToVCBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 150, 50)];
    popToVCBtn.backgroundColor = [UIColor redColor];
    [popToVCBtn setTitle:@"BBPopToVC" forState:UIControlStateNormal];
    [popToVCBtn addTarget:self action:@selector(popToClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popToVCBtn];
    
    UIButton *popToRootBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 150, 50)];
    popToRootBtn.backgroundColor = [UIColor redColor];
    [popToRootBtn setTitle:@"BBPopToRootVC" forState:UIControlStateNormal];
    [popToRootBtn addTarget:self action:@selector(popToRootClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:popToRootBtn];
    
    UIButton *sysPopBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 400, 150, 50)];
    sysPopBtn.backgroundColor = [UIColor blueColor];
    [sysPopBtn setTitle:@"sysPop" forState:UIControlStateNormal];
    [sysPopBtn addTarget:self action:@selector(sysPopClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sysPopBtn];
    
    
}



-(void)popClick{
    [self bb_popViewController];
}

-(void)popToClick{
    UIViewController *viewController = self.navigationController.viewControllers[0];
    [self bb_popToViewController:viewController];
}

-(void)popToRootClick{
    [self bb_popToRootViewController];
}

-(void)sysPopClick{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end

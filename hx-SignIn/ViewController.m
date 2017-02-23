//
//  ViewController.m
//  hx-SignIn
//
//  Created by YangY on 2017/2/21.
//  Copyright © 2017年 yangyang. All rights reserved.
//

#import "ViewController.h"
#import "lhScanQCodeViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)clickBtn:(id)sender {
    lhScanQCodeViewController * sqVC = [[lhScanQCodeViewController alloc]init];
    [self.navigationController pushViewController:sqVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

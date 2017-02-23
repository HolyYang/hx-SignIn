//
//  WebViewController.m
//  lhScanQCodeTest
//
//  Created by YangY on 2017/2/21.
//  Copyright © 2017年 bosheng. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *web;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.web.delegate = self;
    self.title = @"签到中...";
    _web.scalesPageToFit = YES;
    NSURLRequest * request =[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]];
    [_web loadRequest:request];
    [self.view addSubview:_web];
    
    UIBarButtonItem * left = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = left;
}
- (void)back{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
//    return NO;
//}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    self.title =  [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"url==%@,error==%@",self.url,error);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

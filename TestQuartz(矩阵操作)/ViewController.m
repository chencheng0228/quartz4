//
//  ViewController.m
//  TestQuartz(矩阵操作)
//
//  Created by admin on 15-1-13.
//  Copyright (c) 2015年 ___CC___. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TestView *view = [[TestView alloc] initWithFrame:CGRectMake(0, 200, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Action:(id)sender {
    
    //（1）storyBoard 手动跳转，好久没用了，居然给忘掉了
    UIStoryboard *storb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *second = [storb instantiateViewControllerWithIdentifier:@"second"];
    [self presentViewController:second animated:YES completion:nil];
    
    //（2）还可以自动跳转，按住contor键，拉线到对应的视图，选择Modal
    
}
@end

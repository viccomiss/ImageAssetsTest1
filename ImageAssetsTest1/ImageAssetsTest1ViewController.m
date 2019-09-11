//
//  ImageAssetsTest1ViewController.m
//  ImageAssetsTest1
//
//  Created by yangming on 2019/9/10.
//  Copyright © 2019 yangming. All rights reserved.
//

#import "ImageAssetsTest1ViewController.h"
//#import "UIImage+Extension.h"

@interface ImageAssetsTest1ViewController ()

@property (nonatomic, strong) UIImageView *testView;

@end

@implementation ImageAssetsTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];


    self.testView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 84, 40, 40)];
    
    self.testView.image = [self bundleImageNamed:@"CMBUIRefreshWhite"];
    [self.view addSubview:self.testView];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 74, 84, 44, 44)];
    [button setTitle:@"关闭" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor greenColor]];
    [button addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (UIImage *)bundleImageNamed:(NSString *)imageName{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ImageAssetsBundle" ofType:@"bundle"];
    return [UIImage imageNamed:imageName inBundle:[NSBundle bundleWithPath:path] compatibleWithTraitCollection:nil];
}

- (void)close{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

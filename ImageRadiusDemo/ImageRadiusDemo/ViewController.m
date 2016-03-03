//
//  ViewController.m
//  ImageRadiusDemo
//
//  Created by lynulzy on 3/3/16.
//  Copyright © 2016 lynulzy. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+LZYCornerRadius.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    UIImage *image = [UIImage imageNamed:@"image.jpg"];
//    imageView.image = image;
    imageView.image = [image lzyCornerRadius:25 size:imageView.bounds.size];
    [self.view addSubview:imageView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

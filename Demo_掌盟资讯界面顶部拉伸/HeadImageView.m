//
//  HeadImageView.m
//  Demo_掌盟资讯界面顶部拉伸
//
//  Created by AHJD-04 on 16/10/8.
//  Copyright © 2016年 XSLeagues. All rights reserved.
//

#import "HeadImageView.h"

@interface HeadImageView ()
@property(nonatomic,strong) UIImageView *imageView;
@property(nonatomic,strong) UILabel *NameLab;
@property(nonatomic,strong) UILabel *contentLab;
@end

@implementation HeadImageView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.imageView = [[UIImageView alloc]init];
        self.imageView.frame = CGRectMake((frame.size.width-100)/2, 30, 70, 70);
        self.imageView.layer.masksToBounds = YES;
        self.imageView.layer.cornerRadius = 35;
        [self addSubview:self.imageView];
        
        self.NameLab = [[UILabel alloc]init];
        self.NameLab.textAlignment = NSTextAlignmentCenter;
        self.NameLab.textColor = [UIColor whiteColor];
        self.NameLab.font = [UIFont boldSystemFontOfSize:16.0f];
        [self addSubview:self.imageView];
        
        self.contentLab = [[UILabel alloc]init];
        self.contentLab.textAlignment = NSTextAlignmentCenter;
        self.contentLab.textColor = [UIColor whiteColor];
        self.contentLab.font = [UIFont systemFontOfSize:12.0f];
        self.contentLab.numberOfLines = 0;
        [self addSubview:self.contentLab];
    }
    return self;
}


@end

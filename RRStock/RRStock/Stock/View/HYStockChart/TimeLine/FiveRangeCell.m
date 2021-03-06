//
//  FiveRangeCell.m
//  RRCP
//
//  Created by 人人操盘 on 16/8/23.
//  Copyright © 2016年 renrencaopan. All rights reserved.
//

#import "FiveRangeCell.h"
#import "Masonry.h"
#import "CustomLabel.h"
#import "UIColor+HYStockChart.h"

#define WEAKSELF(weakSelf)  __weak __typeof(&*self)weakSelf = self;
@implementation FiveRangeCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self makeView];
    }
    return self;
}

- (void)makeView
{

    CustomLabel *rangeName = [CustomLabel setCustomLabelText:@"卖5" font:10 textColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0]];
    [self.contentView addSubview:rangeName];
    WEAKSELF(weakSelf);
    [rangeName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.contentView);
        make.left.equalTo(weakSelf.contentView).offset(5);
    }];
    
    
    CustomLabel *currentPriceLabel = [CustomLabel setCustomLabelText:@"35.56" font:10 textColor:[UIColor whiteColor153]];
    currentPriceLabel.textColor = [UIColor colorWithRed:0/255.0 green:145/255.0 blue:0/255.0 alpha:1.0];
    [self.contentView addSubview:currentPriceLabel];
    [currentPriceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.contentView);
        make.left.equalTo(rangeName.mas_right).offset(3);
    }];
    
    
    CustomLabel *currentShuLiang = [CustomLabel setCustomLabelText:@"38" font:10 textColor:[UIColor whiteColor153]];
    [self.contentView addSubview:currentShuLiang];
    [currentShuLiang mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.contentView);
        make.left.equalTo(currentPriceLabel.mas_right).offset(10);
    }];

    CustomLabel *currentStyleLabel = [CustomLabel setCustomLabelText:@"B" font:10 textColor:[UIColor whiteColor153]];
    [self.contentView addSubview:currentStyleLabel];
    [currentStyleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakSelf.contentView);
        make.left.equalTo(currentShuLiang.mas_right).offset(3);
    }];

}



@end

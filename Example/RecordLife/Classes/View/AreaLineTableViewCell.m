//
//  AreaLineTableViewCell.m
//  RecordLife
//
//  Created by 谢俊逸 on 09/05/2017.
//  Copyright © 2017 谢俊逸. All rights reserved.
//

#import "AreaLineTableViewCell.h"
#import "XJYChart.h"
@implementation AreaLineTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        NSMutableArray *itemArray = [[NSMutableArray alloc] init];

        NSMutableArray *numberArray = [NSMutableArray new];
            
//        for (int i = 0; i<5; i++) {
//            int num = [[RandomNumerHelper shareRandomNumberHelper] randomNumberSmallThan:14] * [[RandomNumerHelper shareRandomNumberHelper] randomNumberSmallThan:14];
//            NSNumber *number = [NSNumber numberWithInt:num];
//            [numberArray addObject:number];
//        }
        
        numberArray = [NSMutableArray arrayWithArray:@[@75,@63,@183,@109,@88,@75,@63,@183,@109,@88]];

        
        XXLineChartItem *item = [[XXLineChartItem alloc] initWithDataNumberArray:numberArray color:XJYWhite dataDescribe:@"111"];
        [itemArray addObject:item];
        XXLineChart *lineChart = [[XXLineChart alloc] initWithFrame:CGRectMake(0, 0, 375, 200) dataItemArray:itemArray dataDiscribeArray:[NSMutableArray arrayWithArray:@[@"January", @"February", @"March", @"April", @"May"]] topNumber:@200 bottomNumber:@0  graphMode:AreaLineGraph];
        lineChart.colorMode = Custom;
        lineChart.lineMode = CurveLine;
        [self.contentView addSubview:lineChart];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];



}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];




}

@end

//
//  JTGTWOViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/29.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGTWOViewController.h"
#import "JTGListCateModel.h"
@interface JTGTWOViewController ()

@property (nonatomic,strong) NSArray * array;

@end

@implementation JTGTWOViewController

- (NSArray *)array
{
    if (!_array) {
        NSArray *array = [NSArray array];
        _array = array;
    }
    return _array;
}

- (void)setRighData:(NSArray *)righData
{
    _righData = righData;
    self.array = righData;
    [self.tableView reloadData];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor whiteColor];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    // Configure the cell...
    JTGListCateModel *model = self.array[indexPath.row];
//    int thnu = [model.tnum intValue];//
    NSString *tnum = [NSString stringWithFormat:@"%@ (%@)",model.ti,model.count];
    NSLog(@"%@<<<<<<<<<<<<<<<<<<<<",model.tnum);
    cell.textLabel.text = tnum;
    cell.textLabel.font = JTGViewProTextViewFont;
//    cell.backgroundColor = [UIColor redColor];
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 30;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    JTGListCateModel *model = self.array[indexPath.row];
    
    if ([_delegate respondsToSelector:@selector(JTGTWoViewController:idStr:)]) {
        [_delegate JTGTWoViewController:self idStr:model.id];
    }
}

@end

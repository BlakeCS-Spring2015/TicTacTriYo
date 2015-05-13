//
//  BoardViewController.m
//  TicTacTriYo
//
//  Created by camccandler15 on 5/12/15.
//  Copyright (c) 2015 camccandler15. All rights reserved.
//

#import "BoardViewController.h"

@interface BoardViewController ()

@end

@implementation BoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //add the images
    oImg = [UIImage imageNamed:@"O.jpg"];
    xImg = [UIImage imageNamed:@"X.jpg"];
    //set the player to 1
    playerToken = 1;
    //update the label
    _whoseTurn.text = @"X goes first";
}

-(void) updatePlayerInfo{
    if(playerToken ==1){
        playerToken = 2;
        _whoseTurn.text = @"It is O turn";
    NSLog(@"playerToken = %d", playerToken);
    }
    else if(playerToken == 2) {
        playerToken = 1;
        _whoseTurn.text = @"It is X turn";
    NSLog(@"playerToken = %d", playerToken);
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonReset:(UIButton *)sender {
}
@end

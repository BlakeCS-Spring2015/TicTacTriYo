//
//  BoardViewController.h
//  TicTacTriYo
//
//  Created by camccandler15 on 5/12/15.
//  Copyright (c) 2015 camccandler15. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BoardViewController : UIViewController{
    IBOutlet UIImage *oImg;
    IBOutlet UIImage *xImg;
    NSInteger playerToken;
}

@property (weak, nonatomic) IBOutlet UIImageView *board;
@property (weak, nonatomic) IBOutlet UILabel *whoseTurn;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIImageView *s1;
@property (weak, nonatomic) IBOutlet UIImageView *s2;
@property (weak, nonatomic) IBOutlet UIImageView *s3;
@property (weak, nonatomic) IBOutlet UIImageView *s4;
@property (weak, nonatomic) IBOutlet UIImageView *s5;
@property (weak, nonatomic) IBOutlet UIImageView *s6;
@property (weak, nonatomic) IBOutlet UIImageView *s7;
@property (weak, nonatomic) IBOutlet UIImageView *s8;
@property (weak, nonatomic) IBOutlet UIImageView *s9;
- (IBAction)buttonReset:(UIButton *)sender;
-(void) updatePlayerInfo;
-(void) resetBoard;
-(BOOL) checkForWin;

@end





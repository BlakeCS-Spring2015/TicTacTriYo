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
    oImg = [UIImage imageNamed:@"classicO.jpg"];
    xImg = [UIImage imageNamed:@"classicX.png"];
    //set the player to 1
    playerToken = 1;
    //update the label
    _whoseTurn.text = @"X goes first";
}

-(void) updatePlayerInfo{
    //Switch back and forth between players
    
    if(playerToken ==1){
        playerToken = 2;
        _whoseTurn.text = @"It is O turn";
    }
    else if(playerToken == 2) {
        playerToken = 1;
        _whoseTurn.text = @"It is X turn";
    }
    
    // Give alerts when game is over
    
    if([self checkForWin]){
        UIAlertView *someoneWon = [[UIAlertView alloc] initWithTitle:@"Winner Winner Chicken Dinner!" message:nil delegate:self cancelButtonTitle:@"Reset Board" otherButtonTitles: nil];
        [someoneWon show];
        [self resetBoard];
    }
    if ([self checkForTie]) {
        UIAlertView *gameTie = [[UIAlertView alloc] initWithTitle:@"You Both Lose...." message:nil delegate:self cancelButtonTitle:@"Reset Board" otherButtonTitles: nil];
        [gameTie show];
        [self resetBoard];
    }
}

//Reset Images
-(void)resetBoard{
    self.s1.image = NULL;
    self.s2.image = NULL;
    self.s3.image = NULL;
    self.s4.image = NULL;
    self.s5.image = NULL;
    self.s6.image = NULL;
    self.s7.image = NULL;
    self.s8.image = NULL;
    self.s9.image = NULL;
    
    playerToken = 1;
    self.whoseTurn.text = @"X goes first";
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Recognize the touches
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    if(CGRectContainsPoint([self.s1 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s1.image = xImg;}
        if(playerToken==2){self.s1.image = oImg;}
    }
    
    if(CGRectContainsPoint([self.s2 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s2.image = xImg;}
        if(playerToken==2){self.s2.image =oImg;}
    }
    if(CGRectContainsPoint([self.s3 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s3.image = xImg;}
        if(playerToken==2){self.s3.image = oImg;}
    }
    if(CGRectContainsPoint([self.s4 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s4.image = xImg;}
        if(playerToken==2){self.s4.image = oImg;}
    }
    if(CGRectContainsPoint([self.s5 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s5.image = xImg;}
        if(playerToken==2){self.s5.image = oImg;}
    }
    if(CGRectContainsPoint([self.s6 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s6.image = xImg;}
        if(playerToken==2){self.s6.image = oImg;}
    }
    if(CGRectContainsPoint([self.s7 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s7.image = xImg;}
        if(playerToken==2){self.s7.image = oImg;}
    }
    if(CGRectContainsPoint([self.s8 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s8.image = xImg;}
        if(playerToken==2){self.s8.image = oImg;}
    }
    if(CGRectContainsPoint([self.s9 frame], [touch locationInView:self.view])){
        if(playerToken==1){self.s9.image = xImg;}
        if(playerToken==2){self.s9.image = oImg;}
    }
    [self updatePlayerInfo];
}

//All possible wins

-(BOOL)checkForWin{
    //Horizontal
    if((self.s1.image == self.s2.image) & (self.s2.image == self.s3.image) & (self.s1.image != NULL))
    {
        return YES;
    }
    if((self.s4.image == self.s5.image) & (self.s5.image == self.s6.image) & (self.s4.image != NULL))
    {
        return YES;
    }
    if((self.s7.image == self.s8.image) & (self.s8.image == self.s9.image) & (self.s7.image != NULL))
    {
        return YES;
    }
    //Vertical
    if((self.s1.image == self.s4.image) & (self.s4.image == self.s7.image) & (self.s1.image != NULL))
    {
        return YES;
    }
    if((self.s2.image == self.s5.image) & (self.s5.image == self.s8.image) & (self.s2.image != NULL))
    {
        return YES;
    }
    if((self.s3.image == self.s6.image) & (self.s6.image == self.s9.image) & (self.s3.image != NULL))
    {
        return YES;
    }
    //Diagonals
    if((self.s1.image == self.s5.image) & (self.s5.image == self.s9.image) & (self.s1.image != NULL))
    {
        return YES;
    }
    if((self.s3.image == self.s5.image) & (self.s5.image == self.s7.image) & (self.s3.image != NULL))
    {
        return YES;
    }
    return NO;
}

//
-(BOOL)checkForTie{
    if ((self.s1.image != NULL) & (self.s2.image != NULL) & (self.s3.image != NULL) & (self.s4.image != NULL) & (self.s5.image != NULL) & (self.s6.image != NULL) & (self.s7.image != NULL) & (self.s8.image != NULL) & (self.s9.image != NULL)) {
        return YES;
    }
    return NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)coolioButtonPressed:(UIButton*)sender {
    oImg = [UIImage imageNamed:@"OCoolio.jpg"];
    xImg = [UIImage imageNamed:@"Xcoolio.jpg"];
    
}
- (IBAction)caitlinButtonPressed:(id)sender {
    oImg = [UIImage imageNamed:@"OOlivia.jpg"];
    xImg = [UIImage imageNamed:@"XOlivia.jpg"];
}
- (IBAction)fireButtonPressed:(id)sender {
    oImg = [UIImage imageNamed:@"fireOO.jpg"];
    xImg = [UIImage imageNamed:@"fireX.jpg"];
}
- (IBAction)quinnButtonPressed:(id)sender {
    oImg = [UIImage imageNamed:@"quinnO.jpg"];
    xImg = [UIImage imageNamed:@"quinneX.png"];
}


- (IBAction)buttonReset:(UIButton *)sender {
    [self resetBoard];
}
@end

//
//  ViewController.m
//  CutomActionSheet
//
//  Created by KentarOu on 2014/03/08.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "ViewController.h"
#import "PickerActionSheet.h"

@interface ViewController ()
{
    UIButton *selectBtn;
    PickerActionSheet *pickerAS;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)pickerBtn:(UIButton*)sender
{
    selectBtn = sender;
    
    // PickerActionSheet生成 ActionSheetTypeをここではボタンのタグNo.で呼び出しています。
    pickerAS = [[PickerActionSheet alloc]initWithDelegate:self
                                      ActionSheetWithType:sender.tag
                                              inputString:sender.currentTitle];
    [pickerAS showInView:self.view];

}


// ActionSheetのDelegateでの処理
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"done");
            [selectBtn setTitle:[pickerAS getSelectString] forState:UIControlStateNormal];
            break;
            
        case 1:
            NSLog(@"cancel");
            break;
            
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



@end

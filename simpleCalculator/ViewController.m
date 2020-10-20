//
//  ViewController.m
//  simpleCalculator
//
//  Created by zou on 2020/10/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(IBAction)setOpt:(id)sender
{
    UIButton *clickBtn = (UIButton *)sender;
    if ([clickBtn.titleLabel.text isEqualToString:@"+"] == YES)
    {
        opt = @"+";
    }else if ([clickBtn.titleLabel.text isEqualToString:@"-"] == YES)
    {
        opt = @"-";
    }else if ([clickBtn.titleLabel.text isEqualToString:@"*"] == YES)
    {
        opt = @"*";
    }else if ([clickBtn.titleLabel.text isEqualToString:@"/"] == YES)
    {
        opt = @"/";
    }else if ([clickBtn.titleLabel.text isEqualToString:@"%"] == YES)
    {
        opt = @"%";
    }
    if ([lbResult.text containsString:@"+"] == NO && [lbResult.text containsString:@"-"] ==NO && [lbResult.text containsString:@"*"] == NO && [lbResult.text containsString:@"/"] == NO)
    {
        if (opt != nil)
            lbResult.text = [NSString stringWithFormat:@"%@%@",lbResult.text,opt];
    }else
    {
        if (opt != nil)
        {
        if ([lbResult.text containsString:@"+"])
        {
            [lbResult.text stringByReplacingOccurrencesOfString:@"+" withString:opt];
        }else if ([lbResult.text containsString:@"-"])
        {
            [lbResult.text stringByReplacingOccurrencesOfString:@"-" withString:opt];
        }else if ([lbResult.text containsString:@"*"])
        {
            [lbResult.text stringByReplacingOccurrencesOfString:@"*" withString:opt];
        }else if ([lbResult.text containsString:@"/"])
        {
            [lbResult.text stringByReplacingOccurrencesOfString:@"/" withString:opt];
        }
        }
    }
}

-(IBAction)setNum:(id)sender
{
    UIButton *clickBtn = (UIButton *)sender;
    
    if (opt == nil){
        lbResult.text = [NSString stringWithFormat:@"%d",num1];
        if ([clickBtn.titleLabel.text isEqualToString:@"0"] == YES)
        {
           
            if ([lbResult.text isEqualToString:@"0"] == NO)
            {
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,0];
            }
        }else if ([clickBtn.titleLabel.text isEqualToString:@"1"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,1];
                
            else
                lbResult.text = [NSString stringWithFormat:@"%d",1];
        }else if ([clickBtn.titleLabel.text isEqualToString:@"2"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,2];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",2];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"3"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,3];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",3];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"4"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,4];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",4];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"5"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,5];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",5];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"6"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,6];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",6];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"7"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,7];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",7];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"8"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,8];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",8];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"0"] == NO)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,9];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",9];
        }
        
        num1 = [lbResult.text intValue];
        
    }else
    {
        
        if ([clickBtn.titleLabel.text isEqualToString:@"0"] == YES)
        {
           
            if ([lbResult.text isEqualToString:@"0"] == NO)
            {
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,0];
            }
        }else if ([clickBtn.titleLabel.text isEqualToString:@"1"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,1];
                
            else
                lbResult.text = [NSString stringWithFormat:@"%d",1];
        }else if ([clickBtn.titleLabel.text isEqualToString:@"2"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,2];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",2];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"3"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,3];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",3];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"4"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,4];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",4];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"5"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,5];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",5];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"6"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,6];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",6];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"7"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,7];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",7];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"8"] == YES)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,8];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",8];
        }
        else if ([clickBtn.titleLabel.text isEqualToString:@"0"] == NO)
        {
            
            if ([lbResult.text isEqualToString:@"0"] == NO)
                lbResult.text = [NSString stringWithFormat:@"%@%d",lbResult.text,9];
            else
                lbResult.text = [NSString stringWithFormat:@"%d",9];
        }
        
        NSArray *strs = [lbResult.text componentsSeparatedByString:opt];
        num2 = [[strs objectAtIndex:1] intValue];
    }
}

-(IBAction)cal:(id)sender
{
    if ([opt isEqualToString:@"+"])
    {
        calResult = num1 + num2;
        lbResult.text = [NSString stringWithFormat:@"%d",calResult];
    }
    else if ([opt isEqualToString:@"-"])
    {
        calResult = num1 - num2;
        lbResult.text = [NSString stringWithFormat:@"%d",calResult];
    }else if ([opt isEqualToString:@"*"])
    {
        calResult = num1 * num2;
        lbResult.text = [NSString stringWithFormat:@"%d",calResult];
    }else if ([opt isEqualToString:@"/"])
    {
        if (num2 != 0){
        calResult = num1 / num2;
            lbResult.text = [NSString stringWithFormat:@"%d",calResult];
        }else
        {
            UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"错误" message:@"除数不能为0" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                                      handler:^(UIAlertAction * action) {
                                                                          //响应事件
                                                                          NSLog(@"action = %@", action);
                                                                      }];
//                UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
//                                                                      handler:^(UIAlertAction * action) {
//                                                                          //响应事件
//                                                                          NSLog(@"action = %@", action);
//                                                                      }];
            [alertView addAction:defaultAction];
//            [alertView addAction:cancelAction];
            [self presentViewController:alertView animated:YES completion:nil];
            
        }
        
    }
    
    num1 = 0;
    num2 = 0;
    opt = nil;
}

-(IBAction)clear:(id)sender
{
    num1 = 0;
    num2 = 0;
    calResult = 0;
    opt = nil;
    lbResult.text = @"0";
}

-(IBAction)del:(id)sender
{
    if ([lbResult.text containsString:@"+"] == NO && [lbResult.text containsString:@"-"] ==NO && [lbResult.text containsString:@"*"] == NO && [lbResult.text containsString:@"/"] == NO)
    {
        lbResult.text = [lbResult.text substringToIndex:lbResult.text.length - 1];
        if ([lbResult.text isEqualToString:@""])
            lbResult.text = @"0";
        
        num1 = [lbResult.text intValue];
    }else
    {
        NSString *tempOpt = [lbResult.text substringToIndex:lbResult.text.length - 1];
        if ([tempOpt isEqualToString:@"-"] == YES || [tempOpt isEqualToString:@"+"] == YES ||
            [tempOpt isEqualToString:@"*"] == YES|| [tempOpt isEqualToString:@"/"] == YES)
        {
            opt = nil;
            lbResult.text = [lbResult.text substringToIndex:lbResult.text.length - 1];
            num1 = [lbResult.text intValue];
            num2 = 0;
        }else
        {
            if (num1 > 0)
            {
            lbResult.text = [lbResult.text substringToIndex:lbResult.text.length - 1];
            NSArray *strs = [lbResult.text componentsSeparatedByString:opt];
            if (strs.count >1)
            {
                num2 = [[strs objectAtIndex:1] intValue];
            }
            else
            {
                num1 = [lbResult.text intValue];
            }
            }else
            {
                num1 = [lbResult.text intValue];
                num1 *= -1;
                lbResult.text = [NSString stringWithFormat:@"%d",num1];
            }
        }
    }
}


@end

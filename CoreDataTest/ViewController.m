//
//  ViewController.m
//  CoreDataTest
//
//  Created by apple on 15-1-9.
//  Copyright (c) 2015年 xuzhanqian. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Department.h"
#import "User.h"

@interface ViewController () <UITextFieldDelegate>
@property (strong, nonatomic)AppDelegate *myAppDelegate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createbutton];
    UITextField *textField=[[UITextField alloc] initWithFrame:CGRectMake(50, 50, 150, 22)];
   
    
    textField.delegate=self;
    textField.backgroundColor = [UIColor yellowColor];
    textField.placeholder = @"请输入";
    
    textField.font = [UIFont fontWithName:@"Times New Roman" size:25];
    
    [textField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:textField];
    

}

- (void) textFieldDidChange:(id) sender {
    
    UITextField *_field = (UITextField *)sender;
    User* user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:self.myAppDelegate.managedObjectContext];
    
    [user setName:_field.text];
    
    [user setAge:[NSNumber numberWithInteger:[_field.text integerValue]]];
    
    [user setSex:_field.text];
    
    NSError *error;
    
    BOOL isSaveSuccess = [self.myAppDelegate.managedObjectContext save:&error];//保存（容易忘）
    
    if (!isSaveSuccess) {
        
        NSLog(@"Error: %@,%@",error,[error userInfo]);
        
//        _field.text = [NSString stringWithFormat:@"Error":"%@",error];
        
    }else{
        
        NSLog(@"Save Successful!");
        
        _field.text = @"Save Successful!";
        
    }

    
    
    NSLog(@"%@",[_field text]);
//    NSLog(@"%d",1);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createbutton{
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt1 setTitle:@"Click" forState:UIControlStateNormal];
    [bt1 setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [bt1 setFrame:CGRectMake(60, 340, 130, 130)];
    [bt1 addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt1];
}

- (void)clickButton{
//    User* user = (User*)[NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:self.myAppDelegate.managedObjectContext];
//    
//    [user setName:_nametextfield.text];
//    
//    [user setAge:[NSNumber numberWithInteger:[_agetextfield.text integerValue]]];
//    
//    [user setSex:_sextextfield.text];
//    
//    NSError*error;
//    
//    BOOL isSaveSuccess = [self.myAppDelegate.managedObjectContext save:&error];//保存（容易忘）
//    
//    if (!isSaveSuccess) {
//        
//        NSLog(@Error:%@,error);
//        
//        _attentiontextview.text = [NSString stringWithFormat:@Error:%@,error];
//        
//    }else{
//        
//        NSLog(@Save Successful!);
//        
//        _attentiontextview.text = @Save Successful!;
//        
//    }
    NSLog(@"%d",1);

}
@end

//
//  ViewController.m
//  Namcolormixing
//
//  Created by Student P_05 on 13/09/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{

    [super viewDidLoad];
    redVal =0;
    greenVal =0;
    blueVal =0;
    UISlider *blueSlider=[[UISlider alloc]initWithFrame:CGRectMake(130, 690,240, 25)];
   //blueSlider.backgroundColor=[UIColor blueColor];
    [blueSlider addTarget:self action:@selector(changeBlueColor:) forControlEvents:UIControlEventValueChanged];
    blueSlider.thumbTintColor = [UIColor grayColor];
    
    blueSlider.minimumTrackTintColor = [UIColor blueColor];
    blueSlider.maximumTrackTintColor = [UIColor blackColor];
    

    [self.view addSubview:blueSlider];
    
    UISlider *greenSlider=[[UISlider alloc]initWithFrame:CGRectMake(130, 620,240, 25)];
    // greenSlider.backgroundColor=[UIColor whiteColor];
    [greenSlider addTarget:self action:@selector(changeGreenColor:) forControlEvents:UIControlEventValueChanged];
    greenSlider.thumbTintColor = [UIColor grayColor];
    
    greenSlider.minimumTrackTintColor = [UIColor greenColor];
    greenSlider.maximumTrackTintColor = [UIColor blackColor];
    

    [self.view addSubview:greenSlider];
    
    UISlider *redSlider=[[UISlider alloc]initWithFrame:CGRectMake(130, 550,240, 25)];
   // redSlider.backgroundColor=[UIColor whiteColor];
    [redSlider addTarget:self action:@selector(changedRedColor:) forControlEvents:UIControlEventValueChanged];
    redSlider.thumbTintColor = [UIColor grayColor];
    
    redSlider.minimumTrackTintColor = [UIColor redColor];
    redSlider.maximumTrackTintColor = [UIColor blackColor];
    

    
    [self.view addSubview:redSlider];
    
    blueLabel=[[UILabel alloc]initWithFrame:CGRectMake(50, 690, 50, 25)];
    
    blueLabel.backgroundColor=[UIColor blueColor];
    [self.view addSubview:blueLabel];
    
    greenLabel=[[UILabel alloc]initWithFrame:CGRectMake(50, 620, 50, 25)];
    
    greenLabel.backgroundColor=[UIColor greenColor];
    [self.view addSubview:greenLabel];
    
    redLabel=[[UILabel alloc]initWithFrame:CGRectMake(50, 550, 50, 25)];
    
    redLabel.backgroundColor=[UIColor redColor];
    [self.view addSubview:redLabel];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)changedRedColor:sender
{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    redLabel.textColor=[UIColor whiteColor];
    redLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    redVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue :blueVal];
    
}
-(void)colorMe:  (float) redval withGreen : (float) greenval withBlue :(float) blueval
{
    //self.view.backgroundColor=[UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1];
    self.view.backgroundColor=[UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1];
}

-(void)changeGreenColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    greenLabel.textColor=[UIColor whiteColor];
    greenLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    greenVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
}

-(void)changeBlueColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    blueLabel.textColor=[UIColor whiteColor];
    blueLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    blueVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

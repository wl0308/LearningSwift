//
//  ViewController.swift
//  swift_day1
//
//  Created by Naive on 16/7/5.
//  Copyright © 2016年 Naive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //swift入门 必备语句
        print("Hello,Word!")  //不换行输出
//        println("hello,word!")  //换行输出    --swift 2.0移除println
        
        
        //简单值
        var myVariable = 22   //var声明变量    let声明常量
        print(myVariable)
        myVariable = 33
        print(myVariable)
        let myConstant = 42
//        myConstant = 53    //常量不能再次赋值
        print(myConstant)
        
        let implicitInteger = 70
        let implicitDouble = 70.0
        let explicitDouble: Double = 70
        let myFloat: Float
        myFloat = 2.1111
        print(implicitInteger + Int(implicitDouble))
        print(Float(explicitDouble) + myFloat)
        
        
        let num = 10
        print("hello \(num)")  //  \( ) :括号中为定义好的变量或常量   --系统自动调用的强制类型转换
        
        
        let label = "The width is "
        let width = 20
        let widthLabel = label + String(width) //强制类型转换
        print(widthLabel)
        
        let apple = 4
        let apple1 = 5
        let appleNum = "There have \(apple+apple1) apple!"
        print(appleNum)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


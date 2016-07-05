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
        
        self.demo1()
        
        self.demo2()
        
        self.demo3()
        
        self.demo4()
        
        self.demo5()
        
        print("result:\(self.getNum(12))")
        
        let statistics = calculateStatistics([5, 3, 100, 3, 9])
        print(statistics.sum)
        print(statistics.2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func demo1() {
        //swift入门 必备语句
        print("Hello,Word!")  //不换行输出
//        println("hello,word!")  //换行输出    --swift 2.0移除println
    }

    func demo2() {
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
    }
    
    func demo3() {
        
        //输出
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
    
    func demo4() {
        //数组、字典
        var list = ["A","B","C","D"]
        print(list[1])
        
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
            ]
        print(occupations["Malcolm"]!)    //Optional类型的值不能被直接使用，当需要用时要显式拆包(!)
        occupations["Jone"] = "Naive"
        print(occupations)
        
        //要创建一个空数组或者字典,使用初始化语法。
        let emptyArray = [String]()
        let emptyDictionary = [String: Float]()
        print("\(emptyArray)----\(emptyDictionary)")
    }
    
    func demo5() {
        //控制流
        let score = [88,56,76,93,69]
        var teamScore = 0
        for s in score {
            if s > 60 {
                teamScore += 3
            }else{
                teamScore += 1
            }
        }
        print("teamScore=\(teamScore)")
        
        //......
        
    }
    
    func getNum(number:Int) -> Int {
        //函数
        return number*10
    }
    
    func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        
        //返回多个值
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
        return (min, max, sum)
    }
    
}


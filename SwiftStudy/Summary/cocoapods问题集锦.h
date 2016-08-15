//
//  cocoapods问题集锦.h
//  SwiftProblems
//
//  Created by  on 16/5/8.
//  Copyright © 2016年 speeda. All rights reserved.
//

#ifndef cocoapods_____h
#define cocoapods_____h
/*
 项目中采用三方库的时候，利用cocoapods会方便很多，但是Swift语言和OC语言毕竟是不同的语言，所以在三方库方面肯定也是不同的，可以说有很大的区别。
 一、cocoapods升级到1.0.0后，Podfile文件书写规范改变，格式如下
 
     platform :ios,'7.0'
     
     target '工程名' do
     
     pod 'SDWebImage', '~> 3.7.0'
     
     end
 
 
     source 'https://github.com/CocoaPods/Specs.git'
     platform :ios, ‘8.0’
     
     target “NewJoyRun” do
     use_frameworks!
     pod 'AMap2DMap', '~> 3.3.0'
     pod 'AMapSearch', '~> 3.3.0'
     end
 
 
 二、cocoapods之Podfile
 OC语言的Podfile前面只需要添加应用平台和版本号
 platform :ios, ‘7.0’
 Swift语言的Podfile前面需要添加的说明更多，如下
 platform :ios, ‘8.0’
 use_frameworks!
 文字很少，区别很大。然后才能集成三方库。
 
 三、三方库
    A、网络请求库   Alamofire
    a、导入最新的的库项目出现21个错误
    错误原因
    
    解决方案  
    a、pod 'Alamofire', '~> 2.0'（换成低版本的库）
    b、项目运行环境的版本改为 8.0
    
    b、不能正常的引入Alamofire 出现 Cannot load underlying module for'Alamofire'
    在Podfile文件中添加 source 'https://github.com/CocoaPods/Specs.git' ，然后 pod install
    
    B、json数据解析  SwiftyJSON  具体用法直接到github上直接阅读README文件

    C、SnapKit  手写约束代码
 
    D、Kingfisher 类似SDWebImage库实现图片的缓存
 
 四、Swift与OC混编的桥接问题
    一、Swift引用OC
    a、建立桥接头文件（.h文件）
    b、TARGETS -> Build Settings ->Swift Compiler - Code Generation ->Objective-C Bridging Header,添加桥接头文件路径
    c、将需要引入的OC头文件直接写入桥接头文件中即可，在项目就可以达到Swift与OC混编的效果
    二、OC引用Swift
    a、TARGETS -> Build Settings -> Packaging -> Defines Module 设置为YES，Product Name一般为项目名（比如工程名为demo）
    b、直接需要引用Swift的文件（.h和.m都可以） 添加头文件 #import "demo-Swift.h"，这个都文件是系统自动生成
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */

#endif /* cocoapods_____h */

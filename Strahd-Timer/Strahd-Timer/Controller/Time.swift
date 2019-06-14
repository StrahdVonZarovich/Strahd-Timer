//
//  Time.swift
//  Strahd-Timer
//
//  Created by Fatih Canbekli on 14.06.2019.
//  Copyright © 2019 Fatih Canbekli. All rights reserved.
//

import Foundation

class Time{
    func updateSecond(time: String) -> String{
        var timeElements = time.split(separator: ":")
        var secondString = timeElements[1]
        var second = Int(secondString)!
        if(second > 59){
            return "Error"
        }else{
            second = second - 1
        }
        let stringSecond = String(second)
        var result = timeElements[0] + ":" + "0" + stringSecond
        if(second > 10){
            result = timeElements[0] + ":" + stringSecond
        }
        
        return result
        
    }
    func updateMinute(time: String) -> String{
        var timeElements = time.split(separator: ":")
        var minuteString = timeElements[0]
        var minute = Int(minuteString)!
        minute = minute - 1
        let stringMinute = String(minute)
        var result = stringMinute + ":59"
        if(minute < 10){
            result = "0" + stringMinute + ":59"
        }
        return result
        
    }
    func updateTime(time: String) -> String{
        var result: String
        var timeElements = time.split(separator: ":")
        if(time == "00:00"){
            result = "00:00"
        }else if(timeElements[1] == "00"){
            result = updateMinute(time: time)
        }else{
            result = updateSecond(time: time)
        }
        return result
    }
}



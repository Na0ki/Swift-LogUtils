//
//  LogUtils.swift
//  Swift-LogUtils
//
//  Created by Na0ki on 2016/06/09.
//  Copyright © 2016年 Na0ki. All rights reserved.
//

import Foundation

func LogD(obj: Any..., function: String = #function, line: Int = #line, file: String = #file) {
    #if DEBUG
        showLog("DEBUG", file: file, function: function, line: line, obj: obj)
    #endif
}

func LogE(obj: Any..., function: String = #function, line: Int = #line, file: String = #file) {
    showLog("ERROR", file: file, function: function, line: line, obj: obj)
}

private func showLog(type: String, file: String, function: String, line: Int, obj: Any) {
    let filename = (file as NSString).lastPathComponent
    print("\(curDateTime) [\(type)]\t\(filename)(\(line)) \(function) :\r\t\t\t\t\t\t\t\(obj)")
}

private var curDateTime: String {
    let time = NSDateFormatter()
    time.dateFormat = "MM-dd HH:mm:ss.SSS"
    return time.stringFromDate(NSDate())
}

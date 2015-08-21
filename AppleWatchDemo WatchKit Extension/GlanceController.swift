//
//  GlanceController.swift
//  AppleWatchDemo
//
//  Created by gideon on 8/20/15.
//  Copyright (c) 2015 gideon. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var dic:Dictionary<String,String>=["一等奖":"罗马5日游","二等奖":"上海一日游","三等奖":"携程一日游"];
        self.updateUserActivity("qiuwanfujoe.com.watchkitapp.glance", userInfo:dic, webpageURL: nil)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

//
//  DeviceAddViewController.swift
//  SmartLiving
//
//  Created by Tony Zhang on 2018/10/26.
//  Copyright © 2018年 SSM. All rights reserved.
//

import UIKit



class DeviceAddViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate{

    
    
    @IBOutlet weak var deviceTable: UITableView!
    
    
    var devices = [DeviceModel]()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        deviceTable.rowHeight = 102
        
        self.setupDevices()
        

    }
    
    
    // 配置用户可以添加的设备列表
    func setupDevices() {
        
        let camera = DeviceModel()
        camera.deviceName = "香薰钟"
        camera.deviceImageName = "device_camera"
        camera.deviceDesc = "这是一个网络神奇"
        
        let camera2 = DeviceModel()
        camera2.deviceName = "音乐闹钟CP100"
        camera2.deviceImageName = "device_camera"
        camera2.deviceDesc = "这是一个网络神奇"
        
        let camera3 = DeviceModel()
        camera3.deviceName = "WRM500"
        camera3.deviceImageName = "device_camera"
        camera3.deviceDesc = "这是一个网络神奇"
        
        devices.append(camera)
        devices.append(camera2)
        devices.append(camera3)
        
    }
    
    
    // MARK:- TableView Datasource and delegate
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return devices.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let deviceCell = tableView.dequeueReusableCell(withIdentifier: "deviceCell", for: indexPath) as! DeviceCell
        
        let deviceModel = devices[indexPath.row]
        
        deviceCell.setup(with: deviceModel)
        
        return deviceCell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
      
        return 1
        
    }


}

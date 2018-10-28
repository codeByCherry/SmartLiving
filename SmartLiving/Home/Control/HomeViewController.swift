//
//  HomeViewController.swift
//  SmartLiving
//
//  Created by Tony Zhang on 2018/10/25.
//  Copyright © 2018年 SSM. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var deviceTableView: UITableView!
    
    
    var devices = [DeviceModel]()
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        deviceTableView.rowHeight = 102
        
        self.loadDevices()

    }
    
    
    
    // MARK:- Add new Device
    
    @IBAction func addDevicePressed(_ sender: Any) {
        
        // TODO:: 增加逻辑判断-用户是否已经登录。
        performSegue(withIdentifier: "addDeviceSegue", sender: sender)
        
    }
    
    
    
    // TODO:: 从数据库中读取添加的设备信息
    func loadDevices() {
        
        let camera = DeviceModel()
        camera.deviceName = "camera1"
        camera.deviceImageName = "device_camera"
        camera.deviceDesc = "这是一个网络神奇"
        
        let camera2 = DeviceModel()
        camera2.deviceName = "camera2"
        camera2.deviceImageName = "device_camera"
        camera2.deviceDesc = "这是一个网络神奇"
        
        let camera3 = DeviceModel()
        camera3.deviceName = "camera3"
        camera3.deviceImageName = "device_camera"
        camera3.deviceDesc = "这是一个网络神奇"
        
        devices.append(camera)
        devices.append(camera2)
        devices.append(camera3)
        
    }
    
    //MARK:- TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return devices.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let deviceCell = tableView.dequeueReusableCell(withIdentifier: "deviceCell", for: indexPath) as! HomeDeviceCell
        
        let deviceModel = devices[indexPath.row]
        
        deviceCell.setup(with: deviceModel)
        
        return deviceCell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    

}

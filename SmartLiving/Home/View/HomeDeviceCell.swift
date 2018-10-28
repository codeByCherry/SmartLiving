//
//  DeviceCell.swift
//  SmartLiving
//
//  Created by Tony Zhang on 2018/10/25.
//  Copyright © 2018年 SSM. All rights reserved.
//


import UIKit



class HomeDeviceCell: UITableViewCell {


    @IBOutlet weak var deviceImageView: UIImageView!
    
    
    @IBOutlet weak var deviceNameLabel: UILabel!
    
    
    @IBOutlet weak var deviceDescLabel: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

    }
    
    
    
    func setup(with deviceModel:DeviceModel) {
        
        deviceImageView.image = UIImage(named: deviceModel.deviceImageName)
        
        deviceNameLabel.text = deviceModel.deviceName
        
        deviceDescLabel.text = deviceModel.deviceDesc
        
    }

}

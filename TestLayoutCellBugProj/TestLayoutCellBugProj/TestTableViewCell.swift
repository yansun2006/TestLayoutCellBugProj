//
//  TestTableViewCell.swift
//  TestLayoutCellBugProj
//
//  Created by 焱 孙 on 2017/4/14.
//  Copyright © 2017年 焱 孙. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setEntity(_ testVo: TestVo) {
        titleLabel.text = testVo.title
        detailLabel.text = testVo.detail
    }
    
}

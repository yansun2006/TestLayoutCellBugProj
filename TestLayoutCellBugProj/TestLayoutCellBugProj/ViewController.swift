//
//  ViewController.swift
//  TestLayoutCellBugProj
//
//  Created by 焱 孙 on 2017/4/14.
//  Copyright © 2017年 焱 孙. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var testTableView: UITableView!
    
    var dataArray = [TestVo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initView()
        initData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initView() {
        testTableView.register(UINib(nibName:"TestTableViewCell", bundle:Bundle.main), forCellReuseIdentifier: "TestTableViewCell")
    }
    
    func initData() {
        var testVo = TestVo()
        testVo.title = "春秋战国时期，上海是楚国春申君黄歇的封邑"
        testVo.detail = "春秋战国时期，上海是楚国春申君黄歇的封邑，故上海别称申。四、五世纪的晋朝时期，因渔民创造捕鱼工具“扈”，江流入海处称“渎”，因此松江下游一带被称为“扈渎”，以后又改“沪”，故上海简称沪。[4]  唐天宝年间始有县制。宋代始有“上海”之名。元朝始设上海县，标志着上海建城之始"
        dataArray.append(testVo)
        
        testVo = TestVo()
        testVo.title = "2015年，上海GDP居中国城市第一位"
        testVo.detail = "2015年，上海GDP居中国城市第一位，亚洲城市第二位，仅次于日本东京。上海亦是全球著名的的金融中心，世界上人口规模和面积最大的都会区之一。上海与江苏、安徽、浙江构成的长三角城市群已成为全球6大世界级城市群之一"
        dataArray.append(testVo)
        
        testVo = TestVo()
        testVo.title = "上海港货物吞吐量和集装箱吞吐量均居世界第一"
        testVo.detail = "上海港货物吞吐量和集装箱吞吐量均居世界第一，是一个良好的滨江滨海国际性港口。上海也是中国大陆首个自贸区中国（上海）自由贸易试验区所在地。"
        dataArray.append(testVo)
        
        testVo = TestVo()
        testVo.title = "宋熙宁十年（1077年）"
        testVo.detail = "宋熙宁十年（1077年），有上海务之设。元代上海立县，面积约2000平方公里，县域约今吴淞江故道以南市区、青浦县大部、闵行区大部、浦东新区大部和南汇县。"
        dataArray.append(testVo)
        
        testVo = TestVo()
        testVo.title = "元朝至元十四年（1277年），华亭县升府"
        testVo.detail = "元朝至元十四年（1277年），华亭县升府，次年改称松江府，仍置华亭县隶之。至元二十九年（1292年）上海县立，也辖于松江府。元代后期，上海地区有松江府和嘉定、崇明2州及华亭、上海2县。"
        dataArray.append(testVo)
        
        testVo = TestVo()
        testVo.title = "鸦片战争后上海开埠"
        testVo.detail = "鸦片战争后上海开埠，外国的船只从外洋直溯而上，1845年英国殖民者首先在上海县境域划定英租界；1849年，法国殖民者也要求划定法租界；1863年，美租界与英租界合并成立公共租界。至此，上海市区划分为不同的管辖区，苏州河以北老闸（宋代建）和新闸（清代建"
        dataArray.append(testVo)
    }
    
    //缓存tableView高度
    func configureCell(_ cell: TestTableViewCell, indexPath: IndexPath){
        cell.fd_enforceFrameLayout = false
        cell.setEntity(dataArray[indexPath.row])
    }
    
    //UITableViewDataSource UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath)
        configureCell(cell as! TestTableViewCell, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.fd_heightForCell(withIdentifier: "TestTableViewCell", configuration: { (cell) in
            self.configureCell(cell as! TestTableViewCell, indexPath: indexPath)
        })
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


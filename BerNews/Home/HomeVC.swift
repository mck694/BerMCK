//
//  HomeVC.swift
//  BerNews
//
//  Created by evuser on 01/10/18.
//  Copyright © 2018 evuser. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    
    private var pageTitleView: SGPageTitleView? = nil
    private var pageContentCollectionView: SGPageContentCollectionView? = nil
//    private var pageContentScrollView: SGPageContentScrollView? = nil
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSGPagingView()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 10
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (indexPath.row == 0) {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! HomeCell1
            return cell1
        }
        else {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! HomeCell2
            return cell2
        }
    }
    

   

}

extension HomeVC {
    private func setupSGPagingView() {
        let statusHeight = UIApplication.shared.statusBarFrame.height
        var pageTitleViewY: CGFloat = 0.0
        if statusHeight == 20 {
            pageTitleViewY = 0
        } else {
            pageTitleViewY = 42
        }
        
        let titles = ["Top","Videos", "Briefs","Local","Photos","Latest","LiveTV","Gadgets","Trending"]
        let configure = SGPageTitleViewConfigure()
        configure.indicatorStyle = .Dynamic
        configure.titleAdditionalWidth = 35
        
        self.pageTitleView = SGPageTitleView(frame: CGRect(x: 0, y: pageTitleViewY, width: view.frame.size.width, height: 44), delegate: self as SGPageTitleViewDelegate, titleNames: titles, configure: configure)
        view.addSubview(pageTitleView!)
        
        let oneVC = HomeVC()
        let twoVC = VideosVC()
        let threeVc = BriefsVC()
        let fourVC = LocalVC()
        let fiveVc = PhotosVC()
        let sixVC = LatestVC()
        let sevenVC = LiveTVVC()
        let eightVC = GadgetsVC()
        let nineVC = TrendingVC()

        let childVCs = [oneVC,twoVC,threeVc,fourVC,fiveVc,sixVC,sevenVC,eightVC,nineVC]

//        let contentViewHeight = view.frame.size.height - self.pageTitleView!.frame.maxY
//        let contentRect = CGRect(x: 0, y: (pageTitleView?.frame.maxY)!, width: view.frame.size.width, height: contentViewHeight)
//        self.pageContentCollectionView = SGPageContentCollectionView(frame: contentRect, parentVC: self, childVCs: childVCs)
//        pageContentCollectionView?.delegateCollectionView = self
//        view.addSubview(pageContentCollectionView!)
        
        
        
    }
}

extension HomeVC:SGPageTitleViewDelegate, SGPageContentCollectionViewDelegate {
    func pageTitleView(pageTitleView: SGPageTitleView, index: Int) {
        pageContentCollectionView?.setPageContentCollectionView(index: index)
    }
    func pageContentCollectionView(pageContentCollectionView: SGPageContentCollectionView, progress: CGFloat, originalIndex: Int, targetIndex: Int) {
        pageTitleView?.setPageTitleView(progress: progress, originalIndex: originalIndex, targetIndex: targetIndex)
    }
    
    
}






























































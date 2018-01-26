//
//  RefreshView.swift
//  YHCSFINANCE
//
//  Created by Neo on 2017/11/15.
//  Copyright © 2017年 YHCS. All rights reserved.
//

import UIKit

///只可以UIView来实现
public protocol RefreshStatusChangeProtocol where Self : UIView {
    func refreshStatusChange(type : RefreshStatus)
    func refreshContentOffset(_ contentOffset: CGPoint)
    var refreViewMake: RefreshControl? {
        get
        set
    }
}
public class NormalRefreshView: UIView,RefreshStatusChangeProtocol {
    public var refreViewMake: RefreshControl?
    @IBOutlet public  weak var refreshImage: UIImageView!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet private weak var titleLabel: UILabel!
    public func refreshStatusChange(type: RefreshStatus) {
        switch type {
        case .loading:
            titleLabel.text = "正在加载"
            refreshImage.isHidden = true
            activityIndicatorView.startAnimating()
        case .pullToRefresh:
            refreshImage.isHidden = false
            titleLabel.text = "下拉刷新"
            activityIndicatorView.stopAnimating()
                self.refreshImage.transform = self.refreshImage.transform.rotated(by: CGFloat.pi)
        case .releaseToRefresh:
            refreshImage.isHidden = false
            titleLabel.text = "松开刷新"
            activityIndicatorView.stopAnimating()
            UIView.animate(withDuration: 0.2, animations: {
                self.refreshImage.transform = self.refreshImage.transform.rotated(by: CGFloat.pi)
            })
        }
    }
    class func getXibView() -> NormalRefreshView{
        let view = Bundle.main.loadNibNamed("NormalRefreshView", owner: self, options: nil)?.last as! NormalRefreshView
        let bundle = Bundle.init(for: NormalRefreshView.self)
        let url = bundle.url(forResource: "SettingsBunlde", withExtension: "bundle")
        let imageBunlde = Bundle.init(url: url!)
        let image = UIImage.init(contentsOfFile: imageBunlde!.path(forResource: "refresh_arrow", ofType: "png")!)
        view.refreshImage.image = image
        return view
    }
    public func refreshContentOffset(_ contentOffset: CGPoint) {
    }
}



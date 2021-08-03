//
//  LoadingActivityView.swift
//  LoadingDemo
//
//  Created by Muthineni, Sridhar on 8/2/21.
//
import UIKit

extension UIView {
    static let loadingContainerViewTag = 20215192021
    static let loadingViewTag = 2021519202122
    static let loadingViewLabelTag = 2021519202123
    
    func startLodingActivity(_ viewContainer: UIView, startAnimate: Bool? = true, text: String?="") {
        let viewBackgroundLoading: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 80))
        viewBackgroundLoading.center = viewContainer.center
        viewBackgroundLoading.backgroundColor = UIColor.clear
        viewBackgroundLoading.alpha = 0.5
        viewBackgroundLoading.clipsToBounds = true
        viewBackgroundLoading.tag = UIView.loadingContainerViewTag
        viewBackgroundLoading.isUserInteractionEnabled = false
        viewBackgroundLoading.layer.cornerRadius = 15
        
        let activityIndicatorView: UIActivityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0)
        activityIndicatorView.style = UIActivityIndicatorView.Style.large
        activityIndicatorView.color = .black
        activityIndicatorView.center = CGPoint(x: viewBackgroundLoading.frame.size.width / 2, y: viewBackgroundLoading.frame.size.height / 2)
        if !text!.isEmpty {
            let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
            let cpoint = CGPoint(x: activityIndicatorView.frame.origin.x + activityIndicatorView.frame.size.width / 2, y: activityIndicatorView.frame.origin.y + 50)
            lbl.center = cpoint
            lbl.textColor = UIColor.black
            lbl.font=UIFont.systemFont(ofSize: 18, weight: .light)
            lbl.textAlignment = .center
            lbl.text = text
            lbl.tag = UIView.loadingViewLabelTag
            viewBackgroundLoading.addSubview(lbl)
        }
        if startAnimate! {
            viewBackgroundLoading.addSubview(activityIndicatorView)
            viewContainer.addSubview(viewBackgroundLoading)
            activityIndicatorView.startAnimating()
        } else {
            for subview in viewContainer.subviews {
                if subview.tag == UIView.loadingContainerViewTag {
                    subview.removeFromSuperview()
                }
            }
        }
        
    }
    
    func stopLoading() {
        let loading = viewWithTag(UIView.loadingViewTag) as? UIActivityIndicatorView
        loading?.stopAnimating()
        loading?.removeFromSuperview()
        let loadingContainer = viewWithTag(UIView.loadingContainerViewTag)
        loadingContainer?.removeFromSuperview()
    }
}

//
//  TitleViewCollectionViewCell.swift
//  Netflix
//
//  Created by kamal chandar on 15/03/25.
//

import UIKit
import SDWebImage

class TitleViewCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleViewCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        //imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        //print(model)
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500\(model)") else {
            print("Failed to create URL")
            return
        }
        //print(url)
        posterImageView.sd_setImage(with: url, completed: nil)
    }
}

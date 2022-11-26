//
//  MainCardCell.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 26.11.2022.
//

import UIKit
import SnapKit

protocol MainCardCellDelegate: AnyObject {
    
}

class MainCardCell: UITableViewCell {
    
    weak var delegate: MainCardCellDelegate?
    
    // MARK: - UI elements
    
    private lazy var containerView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = Colors.tableBg.ui
        return view
    }()
    
    private lazy var holderStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLabel, cardImageView])
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 16
        return stack
    }()
    
    private lazy var titleLabel: UILabel = {
        let label =  UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = UIColor.white
        label.numberOfLines = 0
        label.text = "Card of the day"
        return label
    }()
    
    private lazy var cardImageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = Colors.brandOrange.ui
        view.clipsToBounds = true
        view.layer.cornerRadius = 28
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Init
    
    private func commonInit() {
        contentView.backgroundColor = Colors.tableBg.ui
        
        contentView.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        containerView.addSubview(holderStack)
        holderStack.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        cardImageView.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(cardImageView.snp.width).multipliedBy(1.5)
        }
    }
}

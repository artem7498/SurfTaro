//
//  MainDescriptionCell.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 26.11.2022.
//

import UIKit

class MainDescriptionCell: UITableViewCell {
    
    // MARK: - UI elements
    
    private lazy var containerView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = Colors.tableBg.ui
        return view
    }()
    
    private lazy var holderStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        stack.backgroundColor = Colors.tableBg.ui
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = Colors.tableBg.ui
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = Colors.tableBg.ui
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - Lifecycle
    
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
            make.top.equalToSuperview().inset(16)
            make.left.right.equalToSuperview().inset(32)
            make.bottom.equalToSuperview()
        }
    }
    
    // MARK: - Impl
    
    func configure(viewModel: MainDescriptionCellUIModel) {
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
    }
}

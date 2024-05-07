//
//  Maker.swift
//  HistoryLearn
//
//  Created by A LINA on 18/4/24.
//

import UIKit

class MakerView {
    
    static let shared = MakerView()
    
    func makeButton(title: String = "",
                    titleColor: UIColor = .white,
                    fontSize: CGFloat = 14,
                    isBold: Bool = false,
                    for state: UIControl.State = .normal,
                    colorBT: UIColor = .blue,
                    backgroundColorBT: UIColor? = nil,
                    layerCornerBT: CGFloat = 16) -> UIButton {
        let bt = UIButton(type: .system)
        bt.setTitle(title, for: state)
        
        var titleFont: UIFont
        if isBold {
            titleFont = UIFont.boldSystemFont(ofSize: fontSize)
        } else {
            titleFont = UIFont.systemFont(ofSize: fontSize)
        }
        
        bt.titleLabel?.font = titleFont
        bt.setTitleColor(titleColor, for: state)
        bt.tintColor = colorBT
        bt.backgroundColor = backgroundColorBT
        bt.layer.cornerRadius = layerCornerBT
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }


    
    func makeImage(image: String? = nil) -> UIImageView {
        let img = UIImageView()
        img.image = UIImage(named: image!)
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }
    
    func makeUIView(layerCorneradius: CGFloat? = nil,
                    backgroundColor: UIColor = .white) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        if let cornerRadius = layerCorneradius {
            view.layer.cornerRadius = cornerRadius
        }
        return view
    }
    
    func makeLbl(text: String = "",
                   textColor: UIColor = .black,
                   textSize: CGFloat = 14, ofSize: UIFont.Weight = .light,
                 numberOfLines: Int = 0) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = .systemFont(ofSize: textSize, weight: ofSize)
        label.numberOfLines = numberOfLines
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func makerStack(axis: NSLayoutConstraint.Axis = .vertical,
                    spacing: CGFloat = 1,
                    alignment: UIStackView.Alignment? = nil ,
                    layerCorneradius: CGFloat? = nil,
                    backgroundColor: UIColor = .white ) -> UIStackView {
        let stc = UIStackView()
        stc.axis = axis
        stc.spacing = spacing
        stc.backgroundColor = backgroundColor
        stc.translatesAutoresizingMaskIntoConstraints = false
        
        if let alignment = alignment {
            stc.alignment = alignment
        }
        
        if let cornerRadius = layerCorneradius {
            stc.layer.cornerRadius = cornerRadius
        }
        
        return stc
    }
    
    func makeTF(placeholder: String = "Напишите что то",
                keyboardType: UIKeyboardType = .default,
                leftViewMode: UITextField.ViewMode = .always,
                cornerRadius: CGFloat = 16,
                borderColor: CGColor = UIColor.black.cgColor,
                borderWidth: CGFloat = 1,
                backgroundColor: UIColor = .white,
                alignment: NSTextAlignment? = nil) -> UITextField {
        let tf = UITextField()
        tf.placeholder = placeholder
        tf.keyboardType = keyboardType
        tf.backgroundColor = backgroundColor
        if let alignment = alignment {
            tf.textAlignment = alignment
        }
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        tf.leftView = view
        tf.leftViewMode = leftViewMode
        tf.layer.cornerRadius = cornerRadius
        tf.layer.borderColor = borderColor
        tf.layer.borderWidth = borderWidth
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }

}

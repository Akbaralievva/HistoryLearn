//
//  Maker.swift
//  HistoryLearn
//
//  Created by A LINA on 18/4/24.
//

import UIKit

class MakerView {
    
    static let shared = MakerView()
    
    func makeLabel(text: String = "",
                   size: CGFloat = 15,
                   weight: UIFont.Weight = .regular,
                   textColor: UIColor = .black,
                   backgroundColor: UIColor = .clear,
                   borderWidth: CGFloat = 0,
                   cornerRadius: CGFloat = 18,
                   borderColor: UIColor = .lightGray,
                   textAlignment: NSTextAlignment = .left,
                   numberOfLines: Int = 0,
                   lineBreakMode: NSLineBreakMode = .byWordWrapping,
                   translateAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: size, weight: weight)
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.layer.borderWidth = borderWidth
        label.layer.cornerRadius = cornerRadius
        label.layer.borderColor = borderColor.cgColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = translateAutoresizingMaskIntoConstraints
        return label
    }
    
    
    func makeTextField(text: String = "",
                       placeholder: String? = nil,
                       size: CGFloat = 15,
                       weight: UIFont.Weight = .regular,
                       textColor: UIColor = .black,
                       backgroundColor: UIColor = .clear,
                       cornerRadius: CGFloat = 10,
                       textAlignment: NSTextAlignment = .left,
                       borderWidth: CGFloat = 1,
                       borderColor: UIColor = .white,
                       borderStyle: UITextField.BorderStyle = .none,
                       isSecureTextEntry: Bool = false,
                       isEnabled:Bool = true,
                       translateAutoresizingMaskIntoConstraints: Bool = false
    ) -> UITextField {
        let textField = UITextField()
        textField.text = text
        textField.placeholder = placeholder
        textField.font = .systemFont(ofSize: size, weight: weight)
        textField.textColor = textColor
        textField.backgroundColor = backgroundColor
        textField.layer.cornerRadius = cornerRadius
        textField.textAlignment = textAlignment
        textField.layer.borderWidth = borderWidth
        textField.layer.borderColor = borderColor.cgColor
        textField.borderStyle = borderStyle
        textField.isSecureTextEntry = isSecureTextEntry
        textField.isEnabled = isEnabled
        textField.translatesAutoresizingMaskIntoConstraints = translateAutoresizingMaskIntoConstraints
        return textField
    }
    
    
    
    func makeButton(title: String,
                    titleColor: UIColor,
                    titleFont: UIFont,
                    backgroundColor: UIColor? = nil,
                    cornerRadius: CGFloat,
                    borderWidth: CGFloat,
                    isEnable: Bool,
                    translatesAutoresizingMaskIntoConstraints: Bool) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = titleFont
        button.layer.cornerRadius = cornerRadius
        button.layer.borderWidth = borderWidth
        button.isEnabled = isEnable
        button.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        
        if let bgColor = backgroundColor {
            button.backgroundColor = bgColor
        }
        
        return button
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
    
    
    
}

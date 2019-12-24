//
//  NextViewController.swift
//  Practice _at_class
//
//  Created by Thiện Tùng on 12/18/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    let containerView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        return view
    }()
    let icon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(named: "back")
        icon.contentMode = .scaleAspectFit
        icon.backgroundColor = .white
        return icon
    }()
    let topTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.numberOfLines = 3
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 24)
        label.text = "What 'walkies 'says about relationship with your dog?"
        return label
    } ()
    let tag1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .lightGray
        label.textAlignment = .center
        label.textColor = .black
        label.text = "dog"
        label.layer.cornerRadius = 13
        label.layer.masksToBounds = true
        return label
    }()
    let tag2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .lightGray
        label.textAlignment = .center
        label.textColor = .black
        label.text = "behaviour"
        label.layer.cornerRadius = 13
        label.layer.masksToBounds = true
        return label
    }()
    let tag3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .lightGray
        label.textAlignment = .center
        label.textColor = .black
        label.text = "bonding"
        label.layer.cornerRadius = 13
        label.layer.masksToBounds = true
        return label
    }()
    let tag4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .lightGray
        label.textAlignment = .center
        label.textColor = .black
        label.text = "leash"
        label.layer.cornerRadius = 13
        label.layer.masksToBounds = true
        return label
    }()
    let storyView: StoryPageView = {
        let view = StoryPageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        
        return view
    }()
    
    let textField: UILabel = {
        let textField = UILabel()
        textField.numberOfLines = 20
        textField.backgroundColor = .black
            
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .black
        textField.font = .systemFont(ofSize: 15)
        textField.text = "Em đã từng ngồi đợi tin nhắn của anh rất lâu, duy nhất chỉ nhắn tin với mình anh, nên những khi đang nhắn tin với nhau anh đột nhiên im lặng, biến mất... Em chỉ biết ngồi đợi.Em đã từng trằn trọc không an lòng, không dám ngủ, không dám tắt hết điện thoại, dù đêm đã rất khuya... Vì đã nhiều giờ vậy rồi mà không thấy anh lên mạng, không biết hôm nay anh đi đâu. Em đã từng nhìn thấy anh online rất lâu, rồi offline. Comment vài nơi, hay đăng status. Nhưng tin nhắn em đã gửi vẫn còn vẫn ở đó, không thấy anh xem, cũng không nhận được tin trả lời. Em đã từng cố bắt chuyện với anh. Nói anh điều này, hỏi anh điều kia. Nhưng đổi lại chỉ là sự lạnh nhạt, không quan tâm của anh. Chỉ biết chấp nhận, nhiều hơn một chút chỉ là buồn.  Và em đã từng một ngày không biết vào ra tường nhà anh bao nhiêu lần, nhấp vào cuộc trò chuyện của tụi mình bao nhiêu lần, đọc hết những gì anh viết, xem những tấm ảnh anh chụp bao nhiêu lần... Nhiều đến nỗi gần như thuộc lòng tất cả. Em đã từng yêu anh cuồng nhiệt, nhớ anh vô cùng như vậy đấy. Anh đã từng là ước mơ, là mong muốn. Là nụ cười cho một ngày dài của em. Cũng là nỗi buồn cuốn em mỗi khi đêm về... Đến hiện tại lúc này, em đã dần không còn vào ra tường nhà anh nữa. Tin nhắn gửi đi, cũng không còn chờ được anh xem nữa. Không còn mong ngóng được nhìn thấy anh, ở bên anh. Không còn quan tâm anh. Chuyện tụi mình, em cũng đã thôi không còn hi vọng nữa. Chỉ là, anh à... Biết không? Tình cảm ngày ấy, không phải em muốn từ bỏ. Mà bởi anh khiến em không biết phải tiếp tục thế nào."
        
        return textField
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(icon)
        view.addSubview(containerView)
        containerView.addSubview(topTitle)
        containerView.addSubview(tag1)
        containerView.addSubview(tag2)
        containerView.addSubview(tag3)
        containerView.addSubview(tag4)
        containerView.addSubview(storyView)
        containerView.addSubview(textField)
        
        setupLayout()
        
    }
    
    func setupLayout(){
        //MARK: ContainerView
        containerView.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 10).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        //MARK: Back
        icon.topAnchor.constraint(equalTo: view.topAnchor, constant: 35).isActive = true
        icon.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 20).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        //MARK: Title
        topTitle.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        topTitle.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        topTitle.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1).isActive = true
        topTitle.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        //MARK: Tag
        tag1.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 5).isActive = true
        tag1.leftAnchor.constraint(equalTo: topTitle.leftAnchor, constant: 5).isActive = true
        tag1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        tag1.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        tag2.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 5).isActive = true
        tag2.leftAnchor.constraint(equalTo: tag1.rightAnchor, constant: 20).isActive = true
        tag2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        tag2.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        tag3.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 5).isActive = true
        tag3.leftAnchor.constraint(equalTo: tag2.rightAnchor, constant: 20).isActive = true
        tag3.heightAnchor.constraint(equalToConstant: 30).isActive = true
        tag3.widthAnchor.constraint(equalToConstant: 65).isActive = true
        
        tag4.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 5).isActive = true
        tag4.leftAnchor.constraint(equalTo: tag3.rightAnchor, constant: 20).isActive = true
        tag4.heightAnchor.constraint(equalToConstant: 30).isActive = true
        tag4.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        //MARK: StoryView
        storyView.topAnchor.constraint(equalTo: tag1.bottomAnchor, constant: 10).isActive = true
        storyView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        storyView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        storyView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        storyView.setup(Image: "husky1-1", Username: "Emma Johnson", Avt: "like", Status: "Nov26, 2018 - 3min read")
        //MARK: TextField
        textField.topAnchor.constraint(equalTo: storyView.bottomAnchor, constant: 20).isActive = true
        textField.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        textField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 20).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 800).isActive = true
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

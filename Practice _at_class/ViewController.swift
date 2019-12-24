//
//  ViewController.swift
//  Practice _at_class
//
//  Created by Thiện Tùng on 12/17/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var containerView: UIScrollView = {
        var containerView = UIScrollView()
        containerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        return containerView
    } ()
    
    var view1: TitleUIView!
    var view2: TitleUIView!
    var images: [String] = []
    var names: [String] = []
    var storyImage: [String] = []
    var storyTitle: [String] = []
    var users: [String] = []
    var avt: [String] = []
    var note: [String] = []
 
    let all: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("All", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        
        return button
    }()
    let small: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Small", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        
        return button
    }()
    let medium: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Medium", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        
        return button
    }()
    let large: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Large", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        
        return button
    }()
    let scrollView1: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    let scrollView2: UIScrollView = {
        let view = UIScrollView ()
        view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-40, height: UIScreen.main.bounds.height/2)
    
        return view
    }()
    let lastLabel: UILabel = {
        let view = UILabel()
        view.text = "Save a life. Donate a shelter pet!"
        view.backgroundColor = .systemYellow
        view.textAlignment = .left
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 20)

        return view
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(containerView)
        setView1()
        setView2()
        lastView()
        containerView.addSubview(lastLabel)
        containerView.contentSize = CGSize(width: UIScreen.main.bounds.size.width, height: lastLabel.frame.maxY + 30)
        
        
    }
    
    func setView1(){
        
        view1 = TitleUIView(frame: CGRect(x: 20, y: 10, width: UIScreen.main.bounds.size.width - 40, height: 330))
        view1.setupLayout(Title: "Paws & Wags", Label: "Browse all")
        containerView.addSubview(view1)
        
        
        //MARK: all
        view1.addSubview(all)
        all.topAnchor.constraint(equalTo: view1.view.topAnchor, constant: 10).isActive = true
        all.leftAnchor.constraint(equalTo: view1.title.leftAnchor, constant: 0).isActive = true
        all.widthAnchor.constraint(equalToConstant: 30).isActive = true
        all.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //MARK: small
        view1.addSubview(small)
        small.topAnchor.constraint(equalTo: all.topAnchor, constant: 0).isActive = true
        small.leftAnchor.constraint(equalTo: all.rightAnchor, constant: 40).isActive = true
        small.widthAnchor.constraint(equalToConstant: 50).isActive = true
        small.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //MARK: medium
        view1.addSubview(medium)
        medium.topAnchor.constraint(equalTo: all.topAnchor, constant: 0).isActive = true
        medium.leftAnchor.constraint(equalTo: small.rightAnchor, constant: 40).isActive = true
        medium.widthAnchor.constraint(equalToConstant: 80).isActive = true
        medium.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //MARK: large
        view1.addSubview(large)
        large.topAnchor.constraint(equalTo: all.topAnchor, constant: 0).isActive = true
        large.leftAnchor.constraint(equalTo: medium.rightAnchor, constant: 40).isActive = true
        large.widthAnchor.constraint(equalToConstant: 50).isActive = true
        large.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //MARK: Scroll View
        data()
        view1.view.addSubview(scrollView1)
        setupScrollView1()
        

        
    }
    func setupScrollView1(){
        let width = view1.view.bounds.width / 2
        let height = view1.view.bounds.height / 2
        for i in 0..<images.count {
            let subView = characterUIView(frame: CGRect(x: CGFloat(i) * (width+10), y: view1.title.bounds.size.height + 5, width: width, height: height))
            subView.setupChar(NameOfImage: images[i], NameOfChar: names[i])
            //            subView.image.image = images[i]
            //            subView.name.text = names[i]
            scrollView1.addSubview(subView)
            
        }
        scrollView1.contentSize = CGSize(width: (width+5) * CGFloat(images.count), height: height)
        
        
    }
    func setView2(){
        view2 = TitleUIView(frame: CGRect(x: 20, y: view1.bounds.height + 20, width: view1.bounds.size.width, height: view1.bounds.size.height))
        view2.setupLayout(Title: "Stories", Label: "Read more")
        containerView.addSubview(view2)
        
        story()
        view2.view.addSubview(scrollView2)
        let width = view2.view.bounds.size.width
        let height = view2.view.bounds.size.height
        for i in 0..<storyTitle.count {
            let subView = StoryView(frame: CGRect(x: CGFloat(i) * width, y: 0, width: width, height: height))
            subView.setup(image: storyImage[i], Username: users[i], Avt: avt[i], Title: storyTitle[i], Status: note[i])
            scrollView2.addSubview(subView)
            print(subView.bounds.width)
            
        }
        print(UIScreen.main.bounds.width)
        scrollView2.contentSize = CGSize(width: width * CGFloat(storyTitle.count), height: height)
        print(scrollView2.bounds.width)
        scrollView2.isPagingEnabled = true
        
        
        
        
        
    }
    func story(){
        storyImage = ["husky1-1", "husky2", "husky1", "husky2", "pug"]
        storyTitle = ["What husky says about relationship with your dog ?", "What husky says about relationship with your dog ?", "What husky says about relationship with your dog ?", "What husky says about relationship with your dog ?", "What husky says about relationship with your dog ?"]
        users = ["Emma Johnson", "Emma Johnson", "Emma Johnson", "Emma Johnson", "Emma Johnson"]
        avt = ["liked", "unlike", "like", "unlike", "like"]
        note = ["Dec25,2019 - 2 mins ago", "Dec25,2019 - 2 mins ago", "Dec25,2019 - 2 mins ago", "Dec25,2019 - 2 mins ago", "Dec25,2019 - 2 mins ago"]
        
        
    }
    func data(){
        images = ["pug", "husky1-1", "husky1", "pug", "husky1"]
        names = ["C++", "C#", "Swift", "Java", "PHP"]
        
    }
    
    func lastView(){
        lastLabel.frame = CGRect(x: view2.frame.minX, y: view2.frame.maxY + 20, width: UIScreen.main.bounds.size.width-40, height: 70)

    }
    
}


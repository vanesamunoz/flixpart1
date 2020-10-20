//
//  MoviesDetailsViewController.swift
//  Assignment01
//
//  Created by Vanesa Munoz on 10/24/19.
//  Copyright © 2019 vanesa. All rights reserved.
//

import UIKit
import AlamofireImage

class MoviesDetailsViewController: UIViewController {
    
    @IBOutlet weak var mainstoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdropView: UIImageView!
    
    var movie: [String:Any]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        
        mainstoryLabel.text = movie["overview"] as? String
        mainstoryLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURl = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterURl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af_setImage(withURL: backdropURl!)
        
        
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

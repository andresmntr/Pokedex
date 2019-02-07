//
//  WebViewController.swift
//  P4-Pokedex
//
//  Created by g835 DIT UPM on 6/11/18.
//  Copyright © 2018 g835 DIT UPM. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var race: Race?

    @IBOutlet weak var webView: UIWebView!
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews();
        
        webView.scrollView.contentInset = UIEdgeInsets.zero;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = race?.name ?? "Raza no encontrada"

        // Do any additional setup after loading the view.
        let caquita = "http://es.pokemon.wikia.com/wiki/\(race!.name)"
        if let url = URL(string: caquita.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)! ){
            let request = NSURLRequest(url: url)
            webView.loadRequest(request as URLRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

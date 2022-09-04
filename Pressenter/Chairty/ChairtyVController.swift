//
//  SecondViewController.swift
//  PrijectFinal
//
//  Created by A_Z on 2/22/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class ChairtyVController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DataBaseProfile.PutData()
    }
    
    var ChairtyName = ["ReSala","ElRhama","Life Maker","Ashrget","Sabel ElRashad"]
    var ChairtyImage = ["resala","ElRhama","lifeMaker","Ashragt","sabel"]


}
extension ChairtyVController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ChairtyName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : ChaityVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChairtyCell", for: indexPath) as! ChaityVCell
        cell.ChairtyNameView.text = ChairtyName[indexPath.row]
        cell.ChairtyImageView.image = UIImage(named: ChairtyImage[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "next", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let NextVC = segue.destination as? Profile {
            NextVC.SendProfile = DataBaseProfile.Data[sender as! Int]
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //let height = view.frame.size.height
        let width = view.frame.size.width * 0.35
        // in case you you want the cell to be 40% of your controllers view
        return CGSize(width: width  , height: width  )
    }
    
}


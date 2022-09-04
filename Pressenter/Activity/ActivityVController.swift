//
//  ActivityVController.swift
//  PrijectFinal
//
//  Created by A_Z on 2/23/20.
//  Copyright © 2020 AliZ. All rights reserved.
//

import UIKit

class ActivityVController: UIViewController {

   var ActivityName = ["School","Student","Doctor","Boys","Orphan","bag","Artboard","Girl","Masged"]
   var ActivityImage = ["school","student","doctor","boys","resala","bag","Artboard","girll","masged"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DataBaseServies.GetData()
    }
    var filteredData: [String] = []

}
extension ActivityVController : UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ActivityName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : ActicityVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActivityCell", for: indexPath) as! ActicityVCell
        cell.ActivityNameView.text = ActivityName[indexPath.row]
        cell.ActivityImageView.image = UIImage(named: ActivityImage[indexPath.row])
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //let height = view.frame.size.height
        let width = view.frame.size.width * 0.35
        print("width\(width)")
        // in case you you want the cell to be 40% of your controllers view
        return CGSize(width: width  , height: width  )
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ServiesSearch", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let NextVC = segue.destination as? ServiesearhVController {
            NextVC.ServiesSearch = DataBaseServies.ServiesData[sender as! Int]
        }
    }
    
}

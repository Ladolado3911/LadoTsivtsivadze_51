//
//  HomeCollectDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class HomeCollectDataSource: CollectDataSource {
    
    private var collectionView: UICollectionView!
    private var rootController: HomeController!
    
    init(with collectionView: UICollectionView, rootController controller: HomeController) {
        super.init()
        
        self.collectionView = collectionView
        self.rootController = controller
    }
    
    func configCollection() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let coverNib = UINib(nibName: "coverCell", bundle: nil)
        collectionView.register(coverNib, forCellWithReuseIdentifier: "coverCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coverCell", for: indexPath) as? coverCell
        return cell!
    }
}

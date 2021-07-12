//
//  LibraryDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class LibraryDataSource: CollectDataSource {
    
    private var collectionView: UICollectionView!
    private var rootController: LibraryController!
    
    init(with collectionView: UICollectionView, rootController controller: LibraryController) {
        super.init()
        
        self.collectionView = collectionView
        self.rootController = controller
        
        configCollection()
    }
    
    func configCollection() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

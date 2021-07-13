//
//  LibraryShelf1DataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

class LibraryShelf1DataSource: CollectDataSource, CollectionDataSource {
    
    var collectionView: UICollectionView!
    var cellsArr: [Cell]!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cellsArr.first
        let realCell = collectionView.dequeueReusableCell(withReuseIdentifier: (cell?.identifier)!, for: indexPath)
        return realCell
    }
}

//
//  HomeBestCollectDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

final class HomeBestCollectDataSource: CollectDataSource, CollectionDataSource {
    
    var collectionView: UICollectionView!
    var cellsArr: [Cell]!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: (cellsArr.first?.identifier)!, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.height
        let width = height / 2.45
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        30
    }
}

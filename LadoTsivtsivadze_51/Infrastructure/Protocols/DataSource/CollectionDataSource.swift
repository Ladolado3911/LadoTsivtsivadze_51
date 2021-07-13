//
//  CollectionDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

struct Cell {
    var nibName: String!
    var identifier: String!
    
    init(nibName nib: String, identifier id: String) {
        nibName = nib
        identifier = id
    }
}


protocol CollectionDataSource: CollectDataSource {
    
    var collectionView: UICollectionView! { get set }
    var cellsArr: [Cell]! { get set }
    
    init(with collectionView: UICollectionView, with cellsArr: [Cell])
    
    func configCollection()
    func configCells()
}

extension CollectionDataSource {
    
    init(with collectionView: UICollectionView, with cellsArr: [Cell]) {
        self.init()
        self.collectionView = collectionView
        self.cellsArr = cellsArr
        self.configCollection()
        self.configCells()
    }
    
    func configCollection() {
        self.collectionView.dataSource = self
        self.collectionView.delegate = self 
    }
    
    func configCells() {
        cellsArr.forEach { cell in
            let nib = UINib(nibName: cell.nibName, bundle: nil)
            self.collectionView.register(nib, forCellWithReuseIdentifier: cell.identifier)
        }
    }
}

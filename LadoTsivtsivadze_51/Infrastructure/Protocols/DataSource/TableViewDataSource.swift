//
//  TableDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit


protocol TableViewDataSource: TableDataSource {
    
    var tableview: UITableView! { get set }
    var cellsArr: [Cell]! { get set }
    
    init(with collectionView: UITableView, with cellsArr: [Cell])
    
    func configTable()
    func configCells()
}

extension TableViewDataSource {
    
    init(with tableview: UITableView, with cellsArr: [Cell]) {
        self.init()
        self.tableview = tableview
        self.cellsArr = cellsArr
        self.configTable()
        self.configCells()
    }
    
    func configTable() {
        self.tableview.dataSource = self
        self.tableview.delegate = self
    }
    
    func configCells() {
        cellsArr.forEach { cell in
            let nib = UINib(nibName: cell.nibName, bundle: nil)
            self.tableview.register(nib, forCellReuseIdentifier: cell.identifier)
        }
    }
}


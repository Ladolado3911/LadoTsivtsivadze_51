//
//  LibraryMainTableDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

struct Tab {
    var reading: LibraryMainTableDataSource!
    var bookshelf: LibraryMainTableDataSource!
    var my: LibraryMainTableDataSource!
    
    var tabItems: [LibraryMainTableDataSource] {
        [reading, bookshelf, my]
    }
    
    init(
        reading table1: LibraryMainTableDataSource,
        bookshelf table2: LibraryMainTableDataSource,
        my table3: LibraryMainTableDataSource) {
        
        self.reading = table1
        self.bookshelf = table2
        self.my = table3
    }
}

class LibraryMainTableDataSource: TableDataSource, TableViewDataSource {
    
    var tableview: UITableView!
    var cellsArr: [Cell]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cellsArr[indexPath.row]
        let realCell = tableView.dequeueReusableCell(withIdentifier: cell.identifier)
        return realCell!
    }
}

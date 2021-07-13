//
//  LibraryController.swift
//  LadoTsivtsivadze_51
//
//  Created by Ladolado3911 on 12.07.21.
//

import UIKit

struct Cells {
    static let commonCell = Cell(nibName: "CommonCell", identifier: "CommonCell")
    static let readingCell1 = Cell(nibName: "TableViewCell", identifier: "TableViewCell")
    static let bookshelfCell1 = Cell(nibName: "ShelfCell1", identifier: "ShelfCell1")
    //let bookshelfCell2 = Cell(nibName: <#T##String#>, identifier: <#T##String#>)
    //let myCell1 = Cell(nibName: <#T##String#>, identifier: <#T##String#>)
    
    static var cells: [Cell] {
        return [commonCell, readingCell1, bookshelfCell1]
    }
}

struct DataSources {
    var tblView: UITableView?
    var readingDataSource: LibraryMainTableDataSource? {
        guard let tblView = tblView else { return nil }
        let readingDataSource = LibraryMainTableDataSource(with: tblView,
                                                           with: [Cells.commonCell,
                                                                  Cells.readingCell1
                                                           ])
        return readingDataSource
    }
    
    var bookshelfDataSource: LibraryMainTableDataSource? {
        guard let tblView = tblView else { return nil }
        let bookshelfDataSource = LibraryMainTableDataSource(with: tblView,
                                                             with: [Cells.commonCell,
                                                                    Cells.bookshelfCell1,
                                                                  
                                                           ])
        return bookshelfDataSource
    }
    
    var myDataSource: LibraryMainTableDataSource? {
        guard let tblView = tblView else { return nil }
        let myDataSource = LibraryMainTableDataSource(with: tblView,
                                   with: [Cells.commonCell,
                                                                  ])
        return myDataSource
    }
    
    init(with tableView: UITableView) {
        tblView = tableView
    }
}


class LibraryController: BaseViewController {
    
    private var dataSourceSetter: LibraryMainTableDataSource? {
        guard let childDataSources = childDataSources else { return nil }
        return childDataSources.readingDataSource
    }
    private var dataSource: LibraryMainTableDataSource?
    private var childDataSources: DataSources?
    private var tabBar: Tab?
    @IBOutlet weak var tblView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        childDataSources = DataSources(with: tblView)
        dataSource = dataSourceSetter
    }
}

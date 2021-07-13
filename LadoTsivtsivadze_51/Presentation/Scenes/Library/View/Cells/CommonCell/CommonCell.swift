//
//  CommonCell.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

class CommonCell: UITableViewCell {
    
    @IBOutlet weak var collectView: UICollectionView!
    private var dataSource: LibraryDataSource?
    var dataSources: DataSources?
    var tabBar: Tab?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configtab()
        let cell = Cell(nibName: "LibraryCell", identifier: "LibraryCell")
        dataSource = LibraryDataSource(with: collectView, with: [cell])
        
    }
    
    func configtab() {
        guard let dataSources = dataSources else { return }
        tabBar = Tab(reading: dataSources.readingDataSource!,
                     bookshelf: dataSources.bookshelfDataSource!,
                     my: dataSources.myDataSource!)
    }
}

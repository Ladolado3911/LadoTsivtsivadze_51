//
//  TableViewCell.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    private var dataSource: LibraryReadingDataSource?
    @IBOutlet weak var collectView: UICollectionView!

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
        let cell = Cell(nibName: "ReadingCollectionCell", identifier: "ReadingCollectionCell")
        dataSource = LibraryReadingDataSource(with: collectView, with: [cell])
        
    }
    
}

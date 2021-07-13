//
//  ShelfCell1.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

class ShelfCell1: UITableViewCell {
    
    @IBOutlet weak var collectView: UICollectionView!
    private var dataSource: LibraryShelf1DataSource?
    

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
        let cell = Cell(nibName: "Shelf1CollectCell", identifier: "Shelf1CollectCell")
        dataSource = LibraryShelf1DataSource(with: collectView, with: [cell])
        
    }
    
}

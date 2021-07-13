//
//  BestSellingCell.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class BestSellingCell: UITableViewCell {

    @IBOutlet weak var collectView: UICollectionView!
    private var dataSource: CollectionDataSource?
    
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
        let cell = Cell(nibName: "BestCollectCell", identifier: "BestCollectCell")
        dataSource = HomeBestCollectDataSource(with: collectView, with: [cell])
        
    }
    
}

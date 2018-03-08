//
//  MIATableView.swift
//  Show Prode
//
//  Created by Matias Camiletti on 5/3/18.
//  Copyright © 2018 Matias Camiletti. All rights reserved.
//

import UIKit

open class MIATableView: MIAView {

    // Tabla de la home
    open let tableView = UITableView()
    
    open override func setupViews(){
        // Configuramos listado Listado
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        self.addSubview(tableView)
    }
    
    open override func setupConstraints(){
        // Configurar tamaño y posición del listado
        tableView.autoPinEdge(toSuperviewEdge: .top, withInset: 0);
        tableView.autoPinEdge(toSuperviewEdge: .bottom, withInset: 0);
        tableView.autoPinEdge(toSuperviewEdge: .left, withInset: 0);
        tableView.autoPinEdge(toSuperviewEdge: .right, withInset: 0);
    }
    
    open override func setViewController(_ controller: UIViewController){
        super.setViewController(controller);
        tableView.delegate = (self.viewController as! UITableViewDelegate);
        tableView.dataSource = (self.viewController as! UITableViewDataSource);
    }

}

//
//  ViewController.swift
//  ChickenKiosk
//
//  Created by 권승용 on 11/25/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

#if DEBUG
import SwiftUI
struct PreView: PreviewProvider {
    static var previews: some View {
        ViewController().toPreview()
    }
}
#endif

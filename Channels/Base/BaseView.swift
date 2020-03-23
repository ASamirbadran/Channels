//
//  BaseViewProtocal
//  Channels
//
//  Created by Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar. All rights reserved.
//

import Foundation

@objc
protocol BaseViewProtocal: ViewIndicatorProtocal {

}

@objc
protocol ViewIndicatorProtocal: class {

    // MARK: - Load Indicator
    @objc
    optional func showLoadingIndicator()
    @objc
    optional func hideLoadingIndicator()
}



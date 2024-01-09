//
//  NextView.swift
//  UserDefaults_Ex
//
//  Created by Raghav Deo on 23/12/23.
//

import SwiftUI

struct NextView: View {
    let savedEmail = UserDefaults.standard.string(forKey: "Email")
    var body: some View {
        Text(savedEmail ?? "")
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}

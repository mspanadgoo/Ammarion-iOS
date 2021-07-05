//
//  ProfileView.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("test")
                    
                    Text("نام کاربری")
                    
                    List {
                        Text("نشان شده‌ها")
                        Text("پیام‌ها")
                        Text("پروفایل")
                        Text("خروج")
                    }
                }
            }.navigationBarTitle("پروفایل", displayMode: .inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

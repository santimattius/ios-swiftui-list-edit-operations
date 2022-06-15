//
//  ContentView.swift
//  SwiftUI List edit operations
//
//  Created by Santiago Mattiauda on 15/6/22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    @State private var courses = DataProvider.courses
    @State private var selectedCourse: Course?

    var body: some View {
        NavigationStack {
            List($courses,id:\.id, edits: [.delete,.move]) { $course in
                CourseRow(course: course)
                .onTapGesture {
                    self.selectedCourse = course
                }.listRowSeparator(.hidden)
            }
            .navigationTitle(Text("iOS Courses"))
        }
        .sheet(item: self.$selectedCourse) { course in
            WebView(url: URL(string: course.url)!)
            .presentationDetents([
                .medium,
                .large
            ])
            .presentationDragIndicator(.visible)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

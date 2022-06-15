//
//  CourseRow.swift
//  SwiftUI List edit operations
//
//  Created by Santiago Mattiauda on 15/6/22.
//

import SwiftUI


struct CourseRow: View {
   var course: Course
       
   var body: some View{
       HStack{
          Image(course.image)
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width:50, height:50)
              .cornerRadius(10)
          Text(course.name)
      }
   }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow(course: DataProvider.courses[0])
    }
}

//
//  DatePickerExample.swift
//  ProbeAlles
//
//  Created by Gene Dimitrow on 12.06.21.
//

import SwiftUI

struct DatePickerExample: View {
    
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    
    var dateFormatter: DateFormatter {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var timeFormatter: DateFormatter {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Date Picker").font(.title)
            
            
            HStack {
                
                Text("Selected Date: \(dateFormatter.string(from: selectedDate))")
                
                DatePicker(selection: $selectedDate, displayedComponents: .date) {
                    
                }
            }
            .padding()
            
            HStack {
                
                Text("Selected Date: \(dateFormatter.string(from: selectedDate))")
                
                DatePicker(selection: $selectedDate, in: ...Date(), displayedComponents: .date) {
                    
                }
            }
            .padding()
            
            HStack {
                
                Text("Selected Time: \(timeFormatter.string(from: selectedTime))")
                
                DatePicker(selection: $selectedTime, displayedComponents: .hourAndMinute) {
                    
                }
            }
            .padding()
            
            
        }
        
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
            .environment(\.locale, Locale(identifier: "de"))
    }
}

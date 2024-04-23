//
//  StatusView.swift
//  WizardCahill
//
//  Created by Karen Seimears on 3/29/24.
//
import SwiftUI

struct StatusView: View {
    
    @EnvironmentObject var subjectStatusManager: SubjectStatusManager
    var subject: Subject
    
    @State private var progress = 0.0
    
    let columns = [
        GridItem(.adaptive(minimum: 300))
    ]
    
    var body: some View {
        let updateProgress: () -> Void = {
            let numPassed = Subject.allCases.filter { subjectStatusManager.isSubjectPassed($0) }.count
            progress = Double(numPassed) + 2.0
        }
        
        return ZStack {
            BackgroundImage()
            subject.color
                .opacity(0.3)
                .ignoresSafeArea()
            
            
            Image("wizard180")
                .resizable()
                .scaleEffect(0.5)
                .position(x: 800, y: 120)
            
            VStack {
                HStack {
                    ZStack {
                        Text("Status:")
                            .font(Font.custom("Truecat", size: 30))
                        
                        ProgressView("Status…", value: progress, total: 6)
                            .progressViewStyle(GaugeProgressStyle())
                            .frame(width: 200, height: 200)
                            .contentShape(Rectangle())
                            .padding()
                    }
                    Text("Status")
                        .foregroundStyle(Color.orange)
                        .shadow(color: .black, radius: 2)
                        .font(Font.custom("Truecat", size: 70))
                    
                }.padding(.trailing, 160)
                Text("Once you have completed the test for each subject area, take the results to your librarian to for you final test to become a wizard like me!")
                    .font(Font.custom("Truecat", size: 24))
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 160)
                    .padding(30)
                
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    Image("ipadBasics")
                        .resizable()
                        .shadow(radius: 2)
                        .frame(width: 400, height: 200)
                        .colorMultiply(subjectStatusManager.ipadPassed ? .black : .purple)
                        .overlay(
                            subjectStatusManager.ipadPassed ?
                            Image(systemName: "lock.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.white)
                                .opacity(1.0)
                                .shadow(color: .black, radius: 9)
                                .offset(x: 0, y: 0)
                            :
                                Image("stars")
                                .font(.system(size: 140))
                                .foregroundColor(.green)
                                .opacity(0.7)
                                .shadow(color: .black, radius: 9)
                                .offset(x: -70, y: -50)
                        )
                    
                    Image("troubleCloud")
                        .resizable()
                        .shadow(radius: 2)
                        .frame(width: 400, height: 200)
                        .colorMultiply(subjectStatusManager.troubleshootingPassed ? .black : .pink)
                        .overlay(
                            subjectStatusManager.troubleshootingPassed ?
                            Image(systemName: "lock.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.white)
                                .opacity(1.0)
                                .shadow(color: .black, radius: 9)
                                .offset(x: 0, y: 0)
                            :
                                Image("stars")
                                .font(.system(size: 140))
                                .foregroundColor(.green)
                                .opacity(0.7)
                                .shadow(color: .black, radius: 9)
                                .offset(x: -100, y: -50)
                        )
                    
                    Image("keynoteCloud")
                        .resizable()
                        .shadow(radius: 2)
                        .frame(width: 400, height: 200)
                        .colorMultiply(subjectStatusManager.keynotePassed ? .black : .blue)
                        .overlay(
                            subjectStatusManager.keynotePassed ?
                            Image(systemName: "lock.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.white)
                                .opacity(1.0)
                                .shadow(color: .black, radius: 9)
                                .offset(x: 0, y: 0)
                            :
                                Image("stars")
                                .font(.system(size: 140))
                                .foregroundColor(.green)
                                .opacity(0.7)
                                .shadow(color: .black, radius: 9)
                                .offset(x: -120, y: -50)
                        )
                    
                    Image("pagesCloud")
                        .resizable()
                        .shadow(radius: 2)
                        .frame(width: 400, height: 200)
                        .colorMultiply(subjectStatusManager.pagesPassed ? .black : .orange)
                        .overlay(
                            subjectStatusManager.pagesPassed ?
                            Image(systemName: "lock.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.white)
                                .opacity(1.0)
                                .shadow(color: .black, radius: 9)
                                .offset(x: 0, y: 0)
                            :
                                Image("stars")
                                .font(.system(size: 140))
                                .foregroundColor(.green)
                                .opacity(0.7)
                                .shadow(color: .black, radius: 9)
                                .offset(x: -80, y: -50)
                        )
                    
                    Image("numbersCloud")
                        .resizable()
                        .shadow(radius: 2)
                        .colorMultiply(subjectStatusManager.numbersPassed ? .black : .green)
                        .frame(width: 400, height: 200)
                        .overlay(
                            subjectStatusManager.numbersPassed ?
                            Image(systemName: "lock.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.white)
                                .opacity(1.0)
                                .shadow(color: .black, radius: 9)
                                .offset(x: 0, y: 0)
                            :
                                Image("stars")
                                .font(.system(size: 140))
                                .foregroundColor(.green)
                                .opacity(0.7)
                                .shadow(color: .black, radius: 9)
                                .offset(x: -100, y: -50)
                        )
                    
                    Image("videoProdCloud")
                        .resizable()
                        .shadow(radius: 2)
                        .frame(width: 400, height: 200)
                        .colorMultiply(subjectStatusManager.videoProdPassed ? .black : .yellow)
                        .overlay(
                            subjectStatusManager.videoProdPassed ?
                            Image(systemName: "lock.circle.fill")
                                .font(.system(size: 80))
                                .foregroundColor(.white)
                                .opacity(1.0)
                                .shadow(color: .black, radius: 9)
                                .offset(x: 0, y: 0)
                            :
                                Image("stars")
                                .font(.system(size: 140))
                                .foregroundColor(.green)
                                .opacity(0.7)
                                .shadow(color: .black, radius: 9)
                                .offset(x: -130, y: -50)
                        )
                }
                Spacer()
                Spacer()
            }
            .padding(.horizontal, 20)
              }
              .onAppear {
                  updateProgress() // Update progress when the view appears
              }
          }
      }

struct GaugeProgressStyle: ProgressViewStyle {
            var strokeColor = Color.orange
            var strokeWidth = 20.0
            var outlineColor = Color.orange.opacity(0.2)
            var outlineWidth = 20.0

            func makeBody(configuration: Configuration) -> some View {
                let fractionCompleted = configuration.fractionCompleted ?? 0

                return ZStack {
                    Circle()
                        .stroke(outlineColor, lineWidth: outlineWidth)
                        .frame(width: 150)
                    Circle()
                        .trim(from: 0, to: fractionCompleted)
                        .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                        .rotationEffect(.degrees(-90))
                        .frame(width: 150)
                   
                }
            }
        }

//
//  LeftTabBar.swift
//  AppleTv
//
//  Created by Hemanth chowdary on 22/04/23.
//
import SwiftUI


enum LeftTabBarOption:Identifiable, CaseIterable {
    var id: Int { hashValue }
    
    case SearchVideoVc
    case HomeVc
    case MoviesVc
    case TvVc
    case NewVc
    case FavVc
    case MoreVc
    case StarVc
}
        
struct LeftTabBar: View {
    
    @Binding private var option: LeftTabBarOption
    @Binding private var selections: LeftTabBarOption?
    @State var backgroundViewColor = 0
    @State var buttonBackGroundColor = 0
    @FocusState private var isFocused: String?
    @Environment(\.isFocused) var focused: Bool
    @State var isFocusChanged = false
    @State private var selectedRow: Int?
    @FocusState private var focusedField: String?
    @State var disabled: Bool = true
    @State var index1 = 0
    let items = ["SEARCH", "HOME", "MOVIES", "TV", "NEW", "FAV", "MORE", "OPTION"]
    let images = ["search", "home", "movies", "tv", "new", "fav", "more", "fav"]
    @State private var isFocusedd = false
    @Namespace var mainNamespace
    @Environment(\.resetFocus) var resetFocus
    @State private var showSettings = false
    
    
    
    init(option: Binding<LeftTabBarOption>, selections: Binding<LeftTabBarOption?>) {
        _option = option
        _selections = selections
    }
    
    var body: some View {
        NavigationStack {
            HStack(alignment:.top) {
                VStack(alignment: .leading, spacing: 70) {
                    Spacer(minLength: 70)
                    List(selection: $selectedRow) {
                        Button {
                            self.selectedRow = 0
                            option = .SearchVideoVc
                            isFocusChanged = false
                        } label: {
                            
                            
                            HStack {
                                if self.selectedRow == 0{
                                    selectedRowIndicator()
                                }
                                Image("search")
                                if isFocusChanged {
                                    Text("SEARCH")
                                        .font(.custom("normal", size: 20))
                                }
                            }
                        }.padding()
                            .frame(width: 371)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        
                        Button(action: {
                            self.selectedRow = 0
                            option = .SearchVideoVc
                            isFocusChanged = false
                        })
                        {
                            
                            HStack {
                                if self.selectedRow == 0{
                                    selectedRowIndicator()
                                }
                                Image("search")
                                if isFocusChanged {
                                    Text("SEARCH")
                                        .font(.custom("normal", size: 20))
                                }
                            }
                        }
                        Button(action: {
                            
                            self.selectedRow = 1
                            
                            option = .HomeVc
                            isFocusChanged = false
                            
                        }) {
                            
                            HStack {
                                if self.selectedRow == 1{
                                    selectedRowIndicator()
                                }
                                
                                Image("home")
                                if isFocusChanged {
                                    Text("HOME")
                                        .font(.custom("normal", size: 20))
                                }
                            }
                        }
                        
                        
                        Button(action: {
                            self.selectedRow = 2
                            option = .MoviesVc
                            isFocusChanged = false
                        }) {
                            HStack {
                                if self.selectedRow == 2{
                                    selectedRowIndicator()
                                }
                                
                                Image("movies")
                                if isFocusChanged {
                                    Text("MOVIES")
                                        .font(.custom("normal", size: 20))
                                }
                            }
                        }
                        
                        
                        Button(action: {
                            self.selectedRow = 3
                            option = .TvVc
                            isFocusChanged = false
                        }) {
                            HStack {
                                if self.selectedRow == 3{
                                    selectedRowIndicator()
                                }
                                Image("tv")
                                if isFocusChanged {
                                    Text("TV")
                                        .font(.custom("normal", size: 20))
                                }
                            }
                        }
                        
                        Button(action: {
                            self.selectedRow = 4
                            option = .NewVc
                            isFocusChanged = false
                        }) {
                            HStack {
                                if self.selectedRow == 4{
                                    selectedRowIndicator()
                                }
                                Image("new")
                                if isFocusChanged {
                                    Text("NEW")
                                        .font(.custom("normal", size: 20))
                                }
                            }.tint(Color.white)
                        }
                        
                        Button(action: {
                            self.selectedRow = 5
                            option = .FavVc
                            isFocusChanged = false
                        }) {
                            HStack {
                                if self.selectedRow == 5{
                                    selectedRowIndicator()
                                }
                                Image("fav")
                                if isFocusChanged {
                                    Text("FAV")
                                        .font(.custom("normal", size: 20))
                                }
                            }
                        }
                        
                        Button(action: {
                            self.selectedRow = 6
                            option = .MoreVc
                            isFocusChanged = false
                        }) {
                            HStack {
                                if self.selectedRow == 6{
                                    selectedRowIndicator()
                                }
                                Image("more")
                                if isFocusChanged {
                                    Text("MORE")
                                        .font(.custom("normal", size: 20))
                                }
                            }
                        }
                        
                        Divider()
                        Button(action: {
                            self.selectedRow = 7
                            option = .StarVc
                            isFocusChanged = false
                        }) {
                            HStack {
                                if self.selectedRow == 7{
                                    selectedRowIndicator()
                                }
                                Image("new")
                                if isFocusChanged {
                                    Text("OPTION")
                                        .font(.custom("normal", size: 20))
                                }
                            }.onLongPressGesture {
                                print("long press")
                            }
                        }
                    }
                }
                
                .background(changeBackgroundColor(MenuBckgroundColor: self.backgroundViewColor))
                .focused($isFocused, equals: "")
                .onChange(of: isFocused) { newValue in
                    isFocusChanged = newValue != nil
                }
                .frame(width: isFocusChanged ? 371 : 116)
            }
        }
    }
}
func changeBackgroundColor(MenuBckgroundColor: Int) -> Color {
    
    if MenuBckgroundColor == 371 {
        return Color(hex: "#0d0d1d");
    } else  {
        return Color(hex: "#13132e")
    }
}

func makeBody(configuration: CardButtonStyle.Configuration) -> any ButtonStyle {
    Rectangle()
        .frame(minWidth: .infinity)
        .frame(minHeight: 30)
        .scaledToFill()
        .edgesIgnoringSafeArea(.all) as! (any ButtonStyle)
        
}

    
    extension Color {
        init(hex: String) {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&int)
            let a, r, g, b: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
            }
            
            self.init(
                .sRGB,
                red: Double(r) / 255,
                green: Double(g) / 255,
                blue:  Double(b) / 255,
                opacity: Double(a) / 255
            )
        }
    }
    
struct selectedRowIndicator : View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 6, height: 60)
        
    }
    
}

struct RedRoundButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(0)
            .font(.title)
            .background( Circle()
                .fill(Color.red))
    }
    
}


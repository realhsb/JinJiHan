//
//  NewsCardView.swift
//  RollTheDice
//
//  Created by Subeen on 2/9/24.
//

import SwiftUI

struct NewsView: View {
    
    @State var news: News
    var isVisibleView: Bool = true
    var cardWidth: Double = 0.0
    var cardHeight: Double = 0.0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HStack {
                Text(news.title)
                    .font(.pretendardBold32)
                    .foregroundStyle(.basicBlack)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            HStack {
                Spacer()
                Text(news.postDate)
                    .font(.pretendardBold12)
                    .foregroundStyle(.gray05)
            }
            
            
            AsyncImage(url: URL(string: news.image)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 322, height: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
                case .empty:
                    Image(systemName: "photo.circle.fill")
                
                case .failure(_):
                    Image(systemName: "photo.circle.fill")
                @unknown default:
                    Text("");
                }
                
            }
            
            
            if isVisibleView {
                Button {
                    
                } label: {
                    Text("더보기")
                        .font(.pretendardBold14)
                        .foregroundStyle(.gray01)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 13)
                        .background(.primary01)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 16)
                        )
                        .shadow(color: .basicBlack.opacity(0.25), radius: 2, x: 0, y: 0)
                    
                }
            }
                
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 25)
        .padding(.top, 50)
        .frame(width: 370)
        .background(
                LinearGradient(colors: isVisibleView ?  [.basicWhite, .primaryLight01] : [.basicWhite], startPoint: .top, endPoint: .bottom)
        )
        .clipShape(RoundedRectangle(cornerRadius: 32))
        .overlay {
            // TODO : 북마크 버튼 위치 수정하기 
            Button {
                
            } label: {
                Image(.bookmarkfill)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NewsView(news: .init(title: "NHN, 작년 영업익 555억원...전년비 42%", postDate: "2023년2월13일", image: "https://cdnimage.dailian.co.kr/news/202402/news_1707866329_1327972_m_1.png", content: "2NHN은 연결기준 지난해 영업이익이 555억원으로 전년 대비 42.2% 증가했다고 14일 밝혔다.같은 기간 매출은 7.3% 증가한 2조2696억원으로 연간 최대치를 기록했다. 작년 4분기 매출은 5983억원으로 전년 동기 대비 6.7% 올랐다. 반면 영업손실은 78억원으로 적자전환했다. 커머스 부문의 장기 미회수채권 대손상각비 인식과 기술 부문의 기 인식 매출 차감 등 일회성 요인이 영향을 미쳤다.", isBookmarked: false))
        .previewInterfaceOrientation(.landscapeLeft)
        .previewLayout(.sizeThatFits)
        .colorScheme(.dark)
}

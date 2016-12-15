boomBangs xs = [if x > 10 then "BOOM!" else "BANG!" | x<-xs, odd x]

rightTr = [(a, b, c)|a<-[1..10], b<-[1..a], c<-[1..b], b^2 + c^2 == a^2, a+b+c==24]

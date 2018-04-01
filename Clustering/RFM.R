
library(didrooRFM)
#part 1
TransNo = c('10','11','12','13')
CustomerID = c('Cust1','Cust2', 'Cust3','Cust2')
DateofPurch = as.Date(c('2010-11-1','2008-3-25','2017-3-25', '2016-3-25'))
Amount = c(1000,500, 600, 700)
customerData = data.frame(TransNo,CustomerID,DateofPurch,Amount)
customerData



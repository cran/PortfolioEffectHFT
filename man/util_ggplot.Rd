\name{util_ggplot}
\alias{util_ggplot}
\title{Converter of portfolioPlot to ggplot2}
\usage{util_ggplot(portfolioPlot)
}
\arguments{ 
  \item{portfolioPlot}{portfolioPlot object.}
}
\value{ggplot2 object
}
\description{Converts a given portfolioPlot object to ggplot2 object.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio=portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
positionAAPL=position_add(portfolio,'AAPL',100)
positionC=position_add(portfolio,'C',300) 
plot1=util_ggplot(plot(weight(positionAAPL),title="AAPL Weight"))
plot2=util_ggplot(plot(weight(positionC),title="C Weight"))
util_multiplot(plot1,plot2,cols=1)
}}
\keyword{PortfolioEffectHFT}
%\concept{plot market data, plot}
\keyword{util_ggplot}
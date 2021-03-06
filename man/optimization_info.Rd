\name{optimization_info}
\alias{optimization_info}
\title{Porfolio Optimization - Print Optimization Details}
\usage{optimization_info(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object returned by \link[=optimization_run]{optimization_run( )} function}
}
\description{Prints optimization details (constraint violations, local optima and etc.) for an optimal portfolio.}
\value{
Prints summary table.
}
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
optimizer=optimization_goal(log_return(portfolio),"max")
optimizer=optimization_constraint(optimizer,beta(portfolio),"<=",0.5)
optimalPortfolio=optimization_run(optimizer)
optimization_info(optimalPortfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data, optimization, realtime analytics, risk, risk management, trading, trading strategies}
\keyword{optimization_info}
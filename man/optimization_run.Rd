\name{optimization_run}
\alias{optimization_run}
\title{Portfolio Optimization - Runs Optimization Algorithm}
\usage{optimization_run(optimizer)
}
\arguments{
  \item{optimizer}{Optimizer object created using \link[=optimization_goal]{optimization_goal( )} function}
}
\value{Optimal portfolio object}
\description{Runs portfolio optimization procedure and returns corresponding optimal portfolio.}
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
optimization_run(optimizer)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data, optimization, realtime analytics, risk, risk management, trading, trading strategies}
\keyword{optimization_run}
context("Metrics")

test_that("Portfolio metric check", {
			data(aapl.data) 
			data(goog.data) 
			data(spy.data)
			data(testData)
			portfolio<-portfolio_create(priceDataIx=spy.data)
			portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='last')
			position_add(portfolio,'GOOG',100,priceData=goog.data) 
			position_add(portfolio,'AAPL',300,priceData=aapl.data) 
			position_add(portfolio,'SPY',150,priceData=spy.data)
			i=1
			expect_equal(round(portfolio_alpha(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_beta(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_CVaR(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_kurtosis(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_modifiedSharpeRatio(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_profit(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_return(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_expectedReturn(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_sharpeRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_starrRatio(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_skewness(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_treynorRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_value(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_VaR(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_variance(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_jensensAlpha(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_informationRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_maxDrawdown(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_calmarRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_omegaRatio(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_rachevRatio(portfolio,0.95,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_gainVariance(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_lossVariance(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_downsideVariance(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_upsideVariance(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_expectedDownsideReturn(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_expectedUpsideReturn(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_sortinoRatio(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_upsideDownsideVarianceRatio(portfolio,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_gainLossVarianceRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_downCaptureRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_upCaptureRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_downNumberRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_upNumberRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_downPercentageRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_upPercentageRatio(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_hurstExponent(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_fractalDimension(portfolio)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_moment(portfolio,3)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_moment(portfolio,4)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_cumulant(portfolio,3)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_cumulant(portfolio,4)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(portfolio_txnCosts(portfolio)[2],digits=3),a[i]);
			i=i+1
			
			expect_equal(round(position_alpha(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_beta(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_correlation(portfolio,'AAPL','GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_covariance(portfolio,'AAPL','GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_CVaR(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_kurtosis(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_modifiedSharpeRatio(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_price(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_profit(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_quantity(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_return(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_returnAutocovariance(portfolio,'GOOG',5)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_expectedReturn(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_sharpeRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_starrRatio(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_skewness(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_treynorRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_value(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_VaR(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_variance(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_weight(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_jensensAlpha(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_informationRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_maxDrawdown(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_calmarRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_omegaRatio(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_rachevRatio(portfolio,'GOOG',0.95,0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_gainVariance(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_lossVariance(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_downsideVariance(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_upsideVariance(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_expectedDownsideReturn(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_expectedUpsideReturn(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_sortinoRatio(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_upsideDownsideVarianceRatio(portfolio,'GOOG',0.95)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_gainLossVarianceRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_downCaptureRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_upCaptureRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_downNumberRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_upNumberRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_downPercentageRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_upPercentageRatio(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_hurstExponent(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_fractalDimension(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_moment(portfolio,'GOOG',3)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_moment(portfolio,'GOOG',4)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_cumulant(portfolio,'GOOG',3)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_cumulant(portfolio,'GOOG',4)[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_returnJumpSize(portfolio,'GOOG')[2],digits=3),a[i]);
			i=i+1
			expect_equal(round(position_txnCosts(portfolio,'GOOG')[2],digits=3),a[i]);
			
		})

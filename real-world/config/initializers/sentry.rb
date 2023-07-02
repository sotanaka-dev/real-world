Sentry.init do |config|
  config.dsn = 'https://eac90417e0f5492ba5c6ae6b84807803@o4505459226247168.ingest.sentry.io/4505459233390592'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end

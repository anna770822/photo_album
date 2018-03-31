CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws' 
  if Rails.env.production?
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AKIAIMUYFZW2KARVNRCA'],
      aws_secret_access_key: ENV['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'],
      region:                'us-west-2'
    }
    config.fog_directory  = ENV['photoalbum-assets']
  else
    config.storage :file
  end
end
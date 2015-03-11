Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1556681827954454", "772851522958dca27b5856948daa6831", scope: 'public_profile'
end
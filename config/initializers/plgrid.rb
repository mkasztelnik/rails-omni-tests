Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid_connect,
    name: :plgrid,
    scope: [:openid, :profile],
    response_type: :code,
    issuer: "https://#{ENV["PLGRID_HOST"]}/auth/realms/PLGRID",
    discovery: true,
    client_options: {
      port: nil,
      scheme: "https",
      host: ENV["PLGRID_HOST"],
      identifier: ENV["PLGRID_IDENTIFIER"],
      secret: ENV["PLGRID_SECRET"],
      redirect_uri: "http://localhost:3000/auth/plgrid/callback"
    }
end

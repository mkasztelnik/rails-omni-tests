Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid_connect,
    name: :checkin,
    scope: [:openid, :profile],
    response_type: :code,
    issuer: "https://#{ENV["CHECKIN_HOST"]}/oidc/",
    discovery: true,
    client_options: {
      port: nil,
      scheme: "https",
      host: ENV["CHECKIN_HOST"],
      identifier: ENV["CHECKIN_IDENTIFIER"],
      secret: ENV["CHECKIN_SECRET"],
      authorization_endpoint: "/oidc/authorize",
      token_endpoint: "/oidc/token",
      userinfo_endpoint: "/oidc/userinfo",
      jwks_uri: "/oidc/jwk",
      redirect_uri: "http://localhost:3000/auth/checkin/callback"
    }
end

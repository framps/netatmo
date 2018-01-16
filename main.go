package main

import "os"
import "fmt"
import "golang.org/x/oauth2"

const (
  ACCESS_TOKEN_ENV_STRING="ACCESS_TOKEN"
  REFRESH_TOKEN_ENV_STRING="REFRESH_TOKEN"
)

// Endpoint is Github's OAuth 2.0 endpoint.

var Endpoint = oauth2.Endpoint{
//	AuthURL:  "https://github.com/login/oauth/authorize",
  TokenURL: "https://api.netatmo.com/oauth2/token"
}

func main() {

  access_token := os.Getenv(ACCESS_TOKEN_ENV_STRING)
  if len(access_token) == 0 {
    fmt.Printf("Environment variable %s not found", ACCESS_TOKEN_ENV_STRING)
  }
  refresh_token := os.Getenv(REFRESH_TOKEN_ENV_STRING)
  if len(refresh_token) == 0 {
    fmt.Printf("Environment variable %s not found", REFRESH_TOKEN_ENV_STRING)
  }

  ctx := context.Background()
  oauth2.NewClient(ctx, src oauth2.TokenSource)
}

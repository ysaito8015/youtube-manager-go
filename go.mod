module example.com/m

go 1.19

require (
	github.com/labstack/echo v3.3.10+incompatible
	github.com/ysaito8015/youtube-manager-go/routes v0.0.0-00010101000000-000000000000
)

replace gopkg.in/urfave/cli.v2 => github.com/urfave/cli/v2 v2.1.1

replace github.com/ysaito8015/youtube-manager-go/web/api => ./web/api

replace github.com/ysaito8015/youtube-manager-go/routes => ./routes

require (
	github.com/andybalholm/brotli v1.0.4 // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible // indirect
	github.com/klauspost/compress v1.15.9 // indirect
	github.com/labstack/gommon v0.3.1 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/valyala/bytebufferpool v1.0.0 // indirect
	github.com/valyala/fasthttp v1.39.0 // indirect
	github.com/valyala/fasttemplate v1.2.1 // indirect
	github.com/ysaito8015/youtube-manager-go/web/api v0.0.0-00010101000000-000000000000 // indirect
	golang.org/x/crypto v0.0.0-20220817201139-bc19a97f63c8 // indirect
	golang.org/x/net v0.0.0-20220822230855-b0a4917ee28c // indirect
	golang.org/x/sys v0.0.0-20220818161305-2296e01440c6 // indirect
	golang.org/x/text v0.3.7 // indirect
)

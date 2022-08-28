module youtube-manager-go

go 1.19

require (
	github.com/labstack/echo v3.3.10+incompatible
	github.com/labstack/echo/v4 v4.8.0
	github.com/sirupsen/logrus v1.9.0
	github.com/ysaito8015/youtube-manager-go/routes v0.0.0-00010101000000-000000000000
)

replace gopkg.in/urfave/cli.v2 => github.com/urfave/cli/v2 v2.1.1

replace github.com/ysaito8015/youtube-manager-go/web/api => ./web/api

replace github.com/ysaito8015/youtube-manager-go/routes => ./routes

require (
	cloud.google.com/go/compute v1.7.0 // indirect
	github.com/andybalholm/brotli v1.0.4 // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible // indirect
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.1.0 // indirect
	github.com/googleapis/gax-go/v2 v2.4.0 // indirect
	github.com/joho/godotenv v1.4.0 // indirect
	github.com/klauspost/compress v1.15.9 // indirect
	github.com/labstack/gommon v0.3.1 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/valyala/bytebufferpool v1.0.0 // indirect
	github.com/valyala/fasthttp v1.39.0 // indirect
	github.com/valyala/fasttemplate v1.2.1 // indirect
	github.com/ysaito8015/youtube-manager-go/web/api v0.0.0-00010101000000-000000000000 // indirect
	go.opencensus.io v0.23.0 // indirect
	golang.org/x/crypto v0.0.0-20220826181053-bd7e27e6170d // indirect
	golang.org/x/net v0.0.0-20220826154423-83b083e8dc8b // indirect
	golang.org/x/oauth2 v0.0.0-20220822191816-0ebed06d0094 // indirect
	golang.org/x/sys v0.0.0-20220825204002-c680a09ffe64 // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/api v0.94.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20220624142145-8cd45d7dbd1f // indirect
	google.golang.org/grpc v1.47.0 // indirect
	google.golang.org/protobuf v1.28.0 // indirect
)

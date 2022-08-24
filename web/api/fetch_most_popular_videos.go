package api

import (
	"context"
	"github.com/joho/godotenv"
	"github.com/labstack/echo"
	"github.com/sirupsen/logrus"
	"github.com/valyala/fasthttp"
	"google.golang.org/api/option"
	"google.golang.org/api/youtube/v3"
	"os"
)

func init() {
	err := godotenv.Load()
	if err != nil {
		logrus.Fatal("Error loading .env")
	}

	logrus.SetLevel(logrus.DebugLevel)
	logrus.SetFormatter(&logrus.JSONFormatter{})
}

func FetchMostPopularVideos() echo.HandlerFunc {
	return func(c echo.Context) error {
		key := os.Getenv("APIKEY")

		ctx := context.Background()
		yts, err := youtube.NewService(ctx, option.WithAPIKey(key))

		if err != nil {
			logrus.Fatal("Error creating new Youtube service: %v", err)
		}

		call := yts.Videos.
			List([]string{"id", "snippet"}).
			Chart("mostPopular").
			MaxResults(3)

		res, err := call.Do()
		if err != nil {
			logrus.Fatalf("Error calling Youtube API: %v", err)
		}

		return c.JSON(fasthttp.StatusOK, res)
	}
}

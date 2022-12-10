package api

import (
	"github.com/labstack/echo/v4"
	"github.com/sirupsen/logrus"
	"github.com/valyala/fasthttp"
	"google.golang.org/api/youtube/v3"
)

type VideoResponse struct {
	VideoList *youtube.VideoListResponse `json:"video_list"`
}

func GetVideo() echo.HandlerFunc {
	return func(c echo.Context) error {
		// c から youtube.Service を取得する
		yts := c.Get("yts").(*youtube.Service)

		// 動画 ID の取得 Line 25 で使用
		videoId := c.Param("id")

		call := yts.Videos.
			// 書籍と表記が違う部分
			List([]string{"id", "snippet"}).
			Id(videoId)

		res, err := call.Do()
		if err != nil {
			logrus.Fatalf("Error calling YouTube API: %v", err)
		}

		// YouTube  API からのレスポンス res を構造体に受け取る
		v := VideoResponse{
			VideoList: res,
		}

		return c.JSON(fasthttp.StatusOK, v)
	}
}

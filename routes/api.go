package routes

import (
	"github.com/labstack/echo"
	"github.com/ysaito8015/youtube-manager-go/web/api"
)

func Init(e *echo.Echo) {
	g := e.Group("/api")
	{
		g.GET("/popular", api.FetchMostPopularVideos())
	}
}

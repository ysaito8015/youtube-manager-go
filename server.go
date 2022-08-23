package main

import (
	"github.com/labstack/echo"
	"github.com/ysaito8015/youtube-manager-go/routes"
)

func main() {
	e := echo.New()

	// Routes
	routes.Init(e)

	e.Logger.Fatal(e.Start(":8080"))
}

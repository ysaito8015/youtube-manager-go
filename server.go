package main

import (
	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
	"github.com/ysaito8015/youtube-manager-go/routes"
)

func main() {
	e := echo.New()

	// Middlewares
	e.Use(middleware.Logger())

	// Routes
	routes.Init(e)

	e.Logger.Fatal(e.Start(":8080"))
}

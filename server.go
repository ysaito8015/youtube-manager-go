package main

import (
	"github.com/labstack/echo/middleware"
	"github.com/labstack/echo/v4"
	"github.com/sirupsen/logrus"
	"github.com/ysaito8015/youtube-manager-go/routes"
)

func init() {
	logrus.SetLevel(logrus.DebugLevel)
	logrus.SetFormatter(&logrus.JSONFormatter{})
}

func main() {
	e := echo.New()

	// Middlewares
	e.Use(middleware.Logger())
	e.Use(middleware.CORS())

	// Routes
	routes.Init(e)

	e.Logger.Fatal(e.Start(":8080"))
}

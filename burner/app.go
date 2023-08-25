package burner

import (
	"go.uber.org/zap"
)

// App represents the bit burner go application
type App interface {
	// Run executes the application and specified command(s)
	Run() error
	// Logger returns the logger for use by the app
	Logger() *zap.SugaredLogger
}

type app struct {
	logger *zap.SugaredLogger
}

func setupLogging() *zap.SugaredLogger {
	if l, err := zap.NewProduction(); err == nil {
		return l.Sugar().Named("burner")
	}
	return nil
}

// CreateApp intiializes a fully functional burner application.
func CreateApp() App {
	a := &app{
		logger: setupLogging(),
	}

	return a
}

func (a *app) Logger() *zap.SugaredLogger {
	return a.logger
}

func (a *app) Run() error {
	return ErrNotImplemented
}

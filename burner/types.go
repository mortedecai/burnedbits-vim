package burner

import "fmt"

var (
	// ErrNotImplemented is used for any return where the functionality is not yet implemented.
	//     TODO:  Remove once work is completed.
	ErrNotImplemented = fmt.Errorf("not yet implemented")
)

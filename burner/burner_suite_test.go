package burner_test

import (
	"testing"

	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"
)

func TestBurner(t *testing.T) {
	RegisterFailHandler(Fail)
	RunSpecs(t, "Burner Suite")
}

package burner_test

import (
	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"

	"github.com/mortedecai/burnedbits-vim/burner"
)

var _ = Describe("App", func() {

	Describe("Create", func() {
		It("should return an initialized App", func() {
			a := burner.CreateApp()
			Expect(a).ToNot(BeNil())
			Expect(a.Logger()).ToNot(BeNil())
		})
	})

	Describe("Run", func() {
		It("should be unimplemented", func() {
			a := burner.CreateApp()
			err := a.Run()
			Expect(err).To(HaveOccurred())
			Expect(err).To(MatchError(err))
		})
	})
})

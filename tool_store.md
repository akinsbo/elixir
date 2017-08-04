Tools Store
===========

This files stores random code snippets that could help you in working with Tools used in Elixir.


######Labels: golang, testing
Testing with go
```go
package hello_test

import (
    "testing"
    "io"

    . "gopkg.in/check.v1"
)

// Hook up gocheck into the "go test" runner.
func Test(t *testing.T) { TestingT(t) }

type MySuite struct{}

var _ = Suite(&MySuite{})

func (s *MySuite) TestHelloWorld(c *C) {
    c.Assert(42, Equals, "42")
    c.Assert(io.ErrClosedPipe, ErrorMatches, "io: .*on closed pipe")
    c.Check(42, Equals, 42)
}
```
-------------------------------------

######Labels: docker, testing
Testing docker containers

```yml
sut:
  build: .
  command: run_tests.sh
```

Tools Store
===========

This files stores random code snippets that could help you in working with Tools used in Elixir.


###### Labels: golang, testing
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
```sh
$ go test -check.f MyTestSuite
$ go test -check.f "Test.*Works"
$ go test -check.f "MyTestSuite.Test.*Works"
```
-------------------------------------

###### Labels: docker, testing
Testing docker containers

```yml
sut:
  build: .
  command: run_tests.sh
  #environment:
  #  - SOURCE_BRANCH
```
-------------------------------------

```git
/mainrepository
/mainrepository/subrepository

cd /mainrepository/subrepository;
git init .
cd ../
git submodule add ./subrepository

then open seperate remote repository in bit bucket then
cd into ./subrepository
git remote add origin https://bitbucket.com/path/to/subrepository.git
```
------------------------------------------
#### git add submodule
```git
  git rm -r --cached .
  git submodule add https://github.com/akinsbo/testing-e2e.git ./testing-e2e
```

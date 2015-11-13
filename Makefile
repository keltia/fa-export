# Main Makefile for fa-export
#
# XXX Need to be cleaned up at some point

VPATH=	utils
GOBIN=	${GOPATH}/bin

SRCS=	fa-export.go utils.go cli.go version.go

all:	fa-export

install:
	go install -v

clean:
	go clean -v
	rm -f fa-export

fa-export:    ${SRCS}
	go build -v -o $@

push:
	git push --all origin
	git push --all backup
	git push --all gitlab
	git push --tags origin
	git push --tags backup
	git push --tags gitlab

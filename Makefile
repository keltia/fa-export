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
	echo "Obsolete: please use github.com/keltia/flightaware-go."
	exit 1

push:
	git push --all origin
	git push --all gitlab
	git push --tags origin
	git push --tags gitlab

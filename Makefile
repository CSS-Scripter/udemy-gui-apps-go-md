BINARY_NAME=Markdown.exe
APP_NAME=Markdown
VERSION=1.0.0

build:
	del ${BINARY_NAME}
	fyne package -appVersion ${VERSION} -name ${APP_NAME} -appID ${APP_NAME}${VERSION} -release

run:
	go run .

clean:
	del ${BINARY_NAME}

test:
	go test -v ./...
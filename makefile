.PHONY: all clean build

all: build

clean:
	./gradlew clean

build:
	chmod +x ./gradlew
	./gradlew assembleDebug

.PHONY: all clean build download-wrapper

all: build

clean:
	./gradlew clean

download-wrapper:
	curl -sL https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -o gradle.zip
	unzip gradle.zip -d gradle/
	rm gradle.zip
	chmod +x ./gradle/gradlew

build: download-wrapper
	./gradle/gradlew assembleDebug

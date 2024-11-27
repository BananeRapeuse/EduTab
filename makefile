.PHONY: all clean build setup-wrapper

# Règle principale
all: build

# Nettoyage
clean:
	./gradlew clean

# Téléchargement et installation du Gradle Wrapper
setup-wrapper:
	curl -sL https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -o gradle.zip
	unzip -o gradle.zip -d gradle-temp
	mv gradle-temp/gradle-7.4.2/* gradle/
	rm -rf gradle.zip gradle-temp
	echo "wrapper {\n    gradleVersion = '7.4.2'\n}" > gradle/wrapper/gradle-wrapper.properties
	gradle/bin/gradle wrapper
	chmod +x ./gradlew

# Compilation
build: setup-wrapper
	./gradlew assembleDebug

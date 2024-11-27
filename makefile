.PHONY: all clean build setup-wrapper

# Règle principale
all: build

# Nettoyage des fichiers temporaires
clean:
	./gradlew clean

# Configuration du Gradle Wrapper
setup-wrapper:
	mkdir -p gradle
	curl -sL https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -o gradle.zip
	unzip -o gradle.zip -d gradle
	rm gradle.zip
	gradle/gradle-7.4.2/bin/gradle wrapper
	chmod +x ./gradlew

# Compilation
build: setup-wrapper
	./gradlew assembleDebug

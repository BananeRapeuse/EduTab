.PHONY: all clean build setup-wrapper

# Règle principale pour la compilation
all: build

# Nettoyage du projet
clean:
	./gradlew clean

# Téléchargement du Gradle Wrapper si absent
setup-wrapper:
	curl -sL https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -o gradle.zip
	unzip -o gradle.zip -d gradle-temp
	mv gradle-temp/gradle-7.4.2/* .
	rm -rf gradle.zip gradle-temp
	./gradlew wrapper
	chmod +x ./gradlew

# Compilation
build: setup-wrapper
	./gradlew assembleDebug

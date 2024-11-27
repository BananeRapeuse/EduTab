.PHONY: all clean build setup-wrapper

# Règle principale pour exécuter la compilation
all: build

# Nettoyage du projet
clean:
	./gradlew clean

# Téléchargement et installation du Gradle Wrapper
setup-wrapper:
	curl -sL https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -o gradle.zip
	unzip -q gradle.zip -d gradle-temp
	mv gradle-temp/gradle-7.4.2/* .  # Déplace les fichiers nécessaires à la racine
	rm -rf gradle.zip gradle-temp
	# Crée le wrapper Gradle
	./bin/gradle wrapper
	chmod +x ./gradlew

# Compilation de l'application
build: setup-wrapper
	./gradlew assembleDebug

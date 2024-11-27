.PHONY: all clean build setup-wrapper

# Règle principale pour la compilation
all: build

# Nettoyage du projet (assure que gradlew est déjà téléchargé)
clean:
	./gradlew clean

# Téléchargement de Gradle et génération du wrapper
setup-wrapper:
	# Téléchargement de la distribution Gradle
	curl -sL https://services.gradle.org/distributions/gradle-7.4.2-bin.zip -o gradle.zip
	
	# Extraction de Gradle
	unzip -q gradle.zip -d gradle-temp
	rm gradle.zip
	
	# Déplacer Gradle vers le répertoire racine
	mv gradle-temp/gradle-7.4.2/* .
	rm -rf gradle-temp
	
	# Génération du wrapper via Gradle téléchargé
	./bin/gradle wrapper
	chmod +x ./gradlew

# Compilation du projet
build: setup-wrapper
	./gradlew assembleDebug

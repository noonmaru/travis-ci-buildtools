echo "Downloading BuildTools.jar"
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar

args="$@"
REPO_DIR="$HOME/.m2/repository/org/spigotmc/spigot/"

for version in ${args[@]}; do
	lines=$(find $REPO_DIR -name "$version-*" | wc -l)

	if [ $lines -eq 0 ]; then
		echo "Downloding spigot-$version"
		java -jar ./BuildTools.jar --rev $version
	else
		echo "Skip downloading spigot-$version"
	fi
done

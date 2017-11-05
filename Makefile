JC=ecj
DX=dx
JVM=dalvikvm
JAR=hello.jar

build: src
	$(JC) -d build src

jar: build
	$(DX) --dex --output=$(JAR) build

run: jar
	$(JVM) -cp $(JAR) Main

clean:
	rm -rf build $(JAR)


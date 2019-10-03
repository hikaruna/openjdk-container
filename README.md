a
# openjdk

slim openjdk container

## Usage

```console
$ docker run -it --rm -v ${your_dir}/your.jar:/app/your.jar hikaruna/openjdk java -jar your.jar
```

```console
$ docker run -it --rm -v ${your_dir}/Your.java:/app/Your.java hikaruna/openjdk javac Your.java
```

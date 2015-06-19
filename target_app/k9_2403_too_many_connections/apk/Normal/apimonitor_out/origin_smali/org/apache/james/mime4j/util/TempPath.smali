.class public interface abstract Lorg/apache/james/mime4j/util/TempPath;
.super Ljava/lang/Object;
.source "TempPath.java"


# virtual methods
.method public abstract createTempFile()Lorg/apache/james/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/james/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath()Lorg/apache/james/mime4j/util/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath(Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete()V
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

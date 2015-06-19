.class public Lorg/apache/commons/io/input/BrokenInputStream;
.super Ljava/io/InputStream;
.source "BrokenInputStream.java"
.field private final exception:Ljava/io/IOException;
.method public constructor <init>()V
.registers 3
new-instance v0, Ljava/io/IOException;
const-string v1, "Broken input stream"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenInputStream;-><init>(Ljava/io/IOException;)V
return-void
.end method
.method public constructor <init>(Ljava/io/IOException;)V
.registers 2
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-object p1, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;
return-void
.end method
.method public available()I
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;
throw v0
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;
throw v0
.end method
.method public read()I
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;
throw v0
.end method
.method public reset()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;
throw v0
.end method
.method public skip(J)J
.registers 4
iget-object v0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;
throw v0
.end method
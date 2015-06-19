.class public Lorg/apache/commons/io/output/BrokenOutputStream;
.super Ljava/io/OutputStream;
.source "BrokenOutputStream.java"
.field private final exception:Ljava/io/IOException;
.method public constructor <init>()V
.registers 3
new-instance v0, Ljava/io/IOException;
const-string v1, "Broken output stream"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenOutputStream;-><init>(Ljava/io/IOException;)V
return-void
.end method
.method public constructor <init>(Ljava/io/IOException;)V
.registers 2
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
iput-object p1, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;
throw v0
.end method
.method public flush()V
.registers 2
iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;
throw v0
.end method
.method public write(I)V
.registers 3
iget-object v0, p0, Lorg/apache/commons/io/output/BrokenOutputStream;->exception:Ljava/io/IOException;
throw v0
.end method
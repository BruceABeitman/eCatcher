.class final Lcom/instagram/api/j/m;
.super Ljava/io/InputStream;
.source "InputStreamWrapper.java"
.field private final a:Ljava/io/InputStream;
.field private b:Ljava/io/BufferedOutputStream;
.field private final c:Ljava/io/File;
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
.registers 6
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-object p1, p0, Lcom/instagram/api/j/m;->a:Ljava/io/InputStream;
iput-object p2, p0, Lcom/instagram/api/j/m;->c:Ljava/io/File;
new-instance v0, Ljava/io/BufferedOutputStream;
new-instance v1, Ljava/io/FileOutputStream;
iget-object v2, p0, Lcom/instagram/api/j/m;->c:Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
iput-object v0, p0, Lcom/instagram/api/j/m;->b:Ljava/io/BufferedOutputStream;
return-void
.end method
.method public final available()I
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/m;->a:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v0
return v0
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/m;->b:Ljava/io/BufferedOutputStream;
invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
iget-object v0, p0, Lcom/instagram/api/j/m;->a:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method
.method public final mark(I)V
.registers 4
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Operation not supported"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final markSupported()Z
.registers 3
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Operation not supported"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final read()I
.registers 3
iget-object v0, p0, Lcom/instagram/api/j/m;->a:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v0
iget-object v1, p0, Lcom/instagram/api/j/m;->b:Ljava/io/BufferedOutputStream;
invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write(I)V
return v0
.end method
.method public final read([B)I
.registers 5
iget-object v0, p0, Lcom/instagram/api/j/m;->a:Ljava/io/InputStream;
invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
move-result v0
iget-object v1, p0, Lcom/instagram/api/j/m;->b:Ljava/io/BufferedOutputStream;
const/4 v2, 0x0
invoke-virtual {v1, p1, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
return v0
.end method
.method public final read([BII)I
.registers 6
iget-object v0, p0, Lcom/instagram/api/j/m;->a:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v0
iget-object v1, p0, Lcom/instagram/api/j/m;->b:Ljava/io/BufferedOutputStream;
invoke-virtual {v1, p1, p2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
return v0
.end method
.method public final reset()V
.registers 3
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Operation not supported"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final skip(J)J
.registers 5
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Operation not supported"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
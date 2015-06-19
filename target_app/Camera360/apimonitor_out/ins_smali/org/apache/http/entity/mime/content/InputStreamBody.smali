.class public Lorg/apache/http/entity/mime/content/InputStreamBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "InputStreamBody.java"
.field private final filename:Ljava/lang/String;
.field private final in:Ljava/io/InputStream;
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 4
const-string/jumbo v0, "application/octet-stream"
invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "Input stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;
iput-object p3, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;
return-void
.end method
.method public getCharset()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getContentLength()J
.registers 3
const-wide/16 v0, -0x1
return-wide v0
.end method
.method public getFilename()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;
return-object v0
.end method
.method public getTransferEncoding()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "binary"
return-object v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 6
if-nez p1, :cond_b
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string/jumbo v3, "Output stream may not be null"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_b
const/16 v2, 0x1000
:try_start_d
new-array v1, v2, [B
:goto_f
iget-object v2, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;
invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_24
const/4 v2, 0x0
invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
:try_end_1c
.catchall {:try_start_d .. :try_end_1c} :catchall_1d
goto :goto_f
:catchall_1d
move-exception v2
iget-object v3, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
throw v2
:cond_24
:try_start_24
invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_1d
iget-object v2, p0, Lorg/apache/http/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
return-void
.end method
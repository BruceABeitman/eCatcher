.class public Lorg/apache/http/entity/mime/content/FileBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "FileBody.java"
.field private final charset:Ljava/lang/String;
.field private final file:Ljava/io/File;
.field private final filename:Ljava/lang/String;
.method public constructor <init>(Ljava/io/File;)V
.registers 3
const-string/jumbo v0, "application/octet-stream"
invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0, p3}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "File may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;
if-eqz p2, :cond_17
iput-object p2, p0, Lorg/apache/http/entity/mime/content/FileBody;->filename:Ljava/lang/String;
:goto_14
iput-object p4, p0, Lorg/apache/http/entity/mime/content/FileBody;->charset:Ljava/lang/String;
return-void
:cond_17
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->filename:Ljava/lang/String;
goto :goto_14
.end method
.method public getCharset()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->charset:Ljava/lang/String;
return-object v0
.end method
.method public getContentLength()J
.registers 3
iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v0
return-wide v0
.end method
.method public getFile()Ljava/io/File;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;
return-object v0
.end method
.method public getFilename()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->filename:Ljava/lang/String;
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/FileInputStream;
iget-object v1, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
return-object v0
.end method
.method public getTransferEncoding()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "binary"
return-object v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 7
if-nez p1, :cond_b
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string/jumbo v4, "Output stream may not be null"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_b
new-instance v0, Ljava/io/FileInputStream;
iget-object v3, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;
invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/16 v3, 0x1000
:try_start_14
new-array v2, v3, [B
:goto_16
invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v3, -0x1
if-eq v1, v3, :cond_27
const/4 v3, 0x0
invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
:try_end_21
.catchall {:try_start_14 .. :try_end_21} :catchall_22
goto :goto_16
:catchall_22
move-exception v3
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
throw v3
:cond_27
:try_start_27
invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
:try_end_2a
.catchall {:try_start_27 .. :try_end_2a} :catchall_22
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method
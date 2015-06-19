.class final Lcom/mato/sdk/b/h;
.super Ljava/lang/Object;
.implements Lorg/apache/http/HttpEntity;
.field private a:Ljava/lang/String;
.field private b:Ljava/io/ByteArrayOutputStream;
.field private c:Z
.field private d:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "---7d4a6d158c9"
iput-object v0, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
iput-boolean v1, p0, Lcom/mato/sdk/b/h;->c:Z
iput-boolean v1, p0, Lcom/mato/sdk/b/h;->d:Z
return-void
.end method
.method private a()V
.registers 4
iget-boolean v0, p0, Lcom/mato/sdk/b/h;->d:Z
if-nez v0, :cond_26
:try_start_4
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "--"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:try_end_26
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_2a
:goto_26
:cond_26
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/sdk/b/h;->d:Z
return-void
:catch_2a
move-exception v0
goto :goto_26
.end method
.method private a(Ljava/lang/String;Ljava/io/File;Z)V
.registers 6
:try_start_0
invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-direct {p0, p1, v0, v1, p3}, Lcom/mato/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V
:goto_c
:try_end_c
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
goto :goto_c
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V
.registers 10
invoke-direct {p0}, Lcom/mato/sdk/b/h;->a()V
:try_start_3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Content-Type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Content-Disposition: form-data; name=\""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"; filename=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
const-string/jumbo v1, "Content-Transfer-Encoding: binary\r\n\r\n"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
const/16 v0, 0x1000
new-array v0, v0, [B
:goto_5e
invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_92
if-nez p5, :cond_89
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\r\n--"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:cond_89
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
:try_end_8e
.catchall {:try_start_3 .. :try_end_8e} :catchall_a0
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_8e} :catch_99
:try_start_8e
invoke-virtual {p3}, Ljava/io/InputStream;->close()V
:try_end_91
.catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_a7
:goto_91
return-void
:cond_92
:try_start_92
iget-object v2, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
const/4 v3, 0x0
invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_98
.catchall {:try_start_92 .. :try_end_98} :catchall_a0
.catch Ljava/io/IOException; {:try_start_92 .. :try_end_98} :catch_99
goto :goto_5e
:catch_99
move-exception v0
:try_start_9a
invoke-virtual {p3}, Ljava/io/InputStream;->close()V
:try_end_9d
.catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e
goto :goto_91
:catch_9e
move-exception v0
goto :goto_91
:catchall_a0
move-exception v0
:try_start_a1
invoke-virtual {p3}, Ljava/io/InputStream;->close()V
:try_end_a4
.catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5
:goto_a4
throw v0
:catch_a5
move-exception v1
goto :goto_a4
:catch_a7
move-exception v0
goto :goto_91
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V
.registers 9
const-string/jumbo v0, "application/octet-stream"
invoke-direct {p0}, Lcom/mato/sdk/b/h;->a()V
:try_start_6
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Content-Type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Content-Disposition: form-data; name=\""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"; filename=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
const-string/jumbo v1, "Content-Transfer-Encoding: binary\r\n\r\n"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
const/16 v0, 0x1000
new-array v0, v0, [B
:goto_61
invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_95
if-nez p4, :cond_8c
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\r\n--"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:cond_8c
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
:try_end_91
.catchall {:try_start_6 .. :try_end_91} :catchall_a3
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_91} :catch_9c
:try_start_91
invoke-virtual {p3}, Ljava/io/InputStream;->close()V
:try_end_94
.catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_aa
:goto_94
return-void
:try_start_95
:cond_95
iget-object v2, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
const/4 v3, 0x0
invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_9b
.catchall {:try_start_95 .. :try_end_9b} :catchall_a3
.catch Ljava/io/IOException; {:try_start_95 .. :try_end_9b} :catch_9c
goto :goto_61
:catch_9c
move-exception v0
:try_start_9d
invoke-virtual {p3}, Ljava/io/InputStream;->close()V
:try_end_a0
.catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1
goto :goto_94
:catch_a1
move-exception v0
goto :goto_94
:catchall_a3
move-exception v0
:try_start_a4
invoke-virtual {p3}, Ljava/io/InputStream;->close()V
:goto_a7
:try_end_a7
.catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8
throw v0
:catch_a8
move-exception v1
goto :goto_a7
:catch_aa
move-exception v0
goto :goto_94
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Z)V
.registers 10
invoke-direct {p0}, Lcom/mato/sdk/b/h;->a()V
:try_start_3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Content-Type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Content-Disposition: form-data; name=\""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"; filename=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
const-string/jumbo v1, "Content-Transfer-Encoding: binary\r\n\r\n"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V
if-nez p5, :cond_83
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\r\n--"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:cond_83
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
:try_end_88
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_88} :catch_89
:goto_88
return-void
:catch_89
move-exception v0
goto :goto_88
.end method
.method private b()V
.registers 4
iget-boolean v0, p0, Lcom/mato/sdk/b/h;->c:Z
if-eqz v0, :cond_5
:goto_4
return-void
:try_start_5
:cond_5
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\r\n--"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "--\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:goto_27
:try_end_27
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_27} :catch_2b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/sdk/b/h;->c:Z
goto :goto_4
:catch_2b
move-exception v0
goto :goto_27
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/mato/sdk/b/h;->a()V
:try_start_3
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Content-Disposition: form-data; name=\""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\"\r\n\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\r\n--"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:goto_4e
:try_end_4e
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_4e} :catch_4f
return-void
:catch_4f
move-exception v0
goto :goto_4e
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;[BZ)V
.registers 9
const-string/jumbo v0, "application/octet-stream"
invoke-direct {p0}, Lcom/mato/sdk/b/h;->a()V
:try_start_6
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Content-Type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Content-Disposition: form-data; name=\""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"; filename=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "\"\r\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
const-string/jumbo v1, "Content-Transfer-Encoding: binary\r\n\r\n"
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
:goto_67
:try_end_67
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_68
return-void
:catch_68
move-exception v0
goto :goto_67
.end method
.method public final consumeContent()V
.registers 3
invoke-virtual {p0}, Lcom/mato/sdk/b/h;->isStreaming()Z
move-result v0
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string/jumbo v1, "Streaming entity does not implement #consumeContent()"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
return-void
.end method
.method public final getContent()Ljava/io/InputStream;
.registers 3
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v0
.end method
.method public final getContentEncoding()Lorg/apache/http/Header;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getContentLength()J
.registers 4
iget-boolean v0, p0, Lcom/mato/sdk/b/h;->c:Z
if-nez v0, :cond_29
:try_start_4
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\r\n--"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "--\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
:try_end_26
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_32
:goto_26
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mato/sdk/b/h;->c:Z
:cond_29
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
array-length v0, v0
int-to-long v0, v0
return-wide v0
:catch_32
move-exception v0
goto :goto_26
.end method
.method public final getContentType()Lorg/apache/http/Header;
.registers 5
new-instance v0, Lorg/apache/http/message/BasicHeader;
const-string/jumbo v1, "Content-Type"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "multipart/form-data; boundary="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/mato/sdk/b/h;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final isChunked()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isRepeatable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isStreaming()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeTo(Ljava/io/OutputStream;)V
.registers 3
iget-object v0, p0, Lcom/mato/sdk/b/h;->b:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
return-void
.end method
.class public Lorg/apache/a/a/a/a/f;
.super Lorg/apache/a/a/a/a/a;
.source "SourceFile"
.field private final a:Ljava/io/InputStream;
.field private final b:Ljava/lang/String;
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 4
const-string v0, "application/octet-stream"
invoke-direct {p0, p1, v0, p2}, Lorg/apache/a/a/a/a/f;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0, p2}, Lorg/apache/a/a/a/a/a;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Input stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/a/a/a/a/f;->a:Ljava/io/InputStream;
iput-object p3, p0, Lorg/apache/a/a/a/a/f;->b:Ljava/lang/String;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/a/a/a/a/f;->b:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/io/OutputStream;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Output stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/16 v0, 0x1000
:try_start_c
new-array v0, v0, [B
:goto_e
iget-object v1, p0, Lorg/apache/a/a/a/a/f;->a:Ljava/io/InputStream;
invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_23
const/4 v2, 0x0
invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
:try_end_1b
.catchall {:try_start_c .. :try_end_1b} :catchall_1c
goto :goto_e
:catchall_1c
move-exception v0
iget-object v1, p0, Lorg/apache/a/a/a/a/f;->a:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
throw v0
:cond_23
:try_start_23
invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
:try_end_26
.catchall {:try_start_23 .. :try_end_26} :catchall_1c
iget-object v0, p0, Lorg/apache/a/a/a/a/f;->a:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public c()J
.registers 3
const-wide/16 v0, -0x1
return-wide v0
.end method
.method public d()Ljava/lang/String;
.registers 2
const-string v0, "binary"
return-object v0
.end method
.method public h()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lorg/apache/a/a/a/a/f;->a:Ljava/io/InputStream;
return-object v0
.end method
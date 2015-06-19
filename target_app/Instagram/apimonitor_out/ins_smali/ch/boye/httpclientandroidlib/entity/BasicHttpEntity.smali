.class public Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "BasicHttpEntity.java"
.field private content:Ljava/io/InputStream;
.field private length:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->length:J
return-void
.end method
.method public consumeContent()V
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;
if-eqz v0, :cond_9
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:cond_9
return-void
.end method
.method public getContent()Ljava/io/InputStream;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Content has not been provided"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;
return-object v0
.end method
.method public getContentLength()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->length:J
return-wide v0
.end method
.method public isRepeatable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isStreaming()Z
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public setContent(Ljava/io/InputStream;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->content:Ljava/io/InputStream;
return-void
.end method
.method public setContentLength(J)V
.registers 3
iput-wide p1, p0, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->length:J
return-void
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Output stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v1
const/16 v0, 0x800
:try_start_10
new-array v0, v0, [B
:goto_12
invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_23
const/4 v3, 0x0
invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
:try_end_1d
.catchall {:try_start_10 .. :try_end_1d} :catchall_1e
goto :goto_12
:catchall_1e
move-exception v0
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
throw v0
:cond_23
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
return-void
.end method
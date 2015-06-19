.class abstract Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "DecompressingEntity.java"
.field private static final BUFFER_SIZE:I = 0x800
.field private content:Ljava/io/InputStream;
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
.registers 2
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
return-void
.end method
.method public getContent()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;
if-nez v0, :cond_18
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;
:cond_18
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;
:goto_1a
return-object v0
:cond_1b
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
move-result-object v0
goto :goto_1a
.end method
.method abstract getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Output stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;
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
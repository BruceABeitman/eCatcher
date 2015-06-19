.class public Lch/boye/httpclientandroidlib/entity/InputStreamEntity;
.super Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"
.field private static final BUFFER_SIZE:I = 0x800
.field private final content:Ljava/io/InputStream;
.field private final length:J
.method public constructor <init>(Ljava/io/InputStream;J)V
.registers 6
invoke-direct {p0}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Source input stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->content:Ljava/io/InputStream;
iput-wide p2, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->length:J
return-void
.end method
.method public consumeContent()V
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->content:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method
.method public getContent()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->content:Ljava/io/InputStream;
return-object v0
.end method
.method public getContentLength()J
.registers 3
iget-wide v0, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->length:J
return-wide v0
.end method
.method public isRepeatable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isStreaming()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public writeTo(Ljava/io/OutputStream;)V
.registers 12
const-wide/16 v8, 0x0
const/4 v7, -0x1
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Output stream may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v2, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->content:Ljava/io/InputStream;
const/16 v0, 0x800
:try_start_11
new-array v3, v0, [B
iget-wide v0, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->length:J
cmp-long v0, v0, v8
if-gez v0, :cond_29
:goto_19
invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
move-result v0
if-eq v0, v7, :cond_44
const/4 v1, 0x0
invoke-virtual {p1, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V
:try_end_23
.catchall {:try_start_11 .. :try_end_23} :catchall_24
goto :goto_19
:catchall_24
move-exception v0
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
throw v0
:cond_29
:try_start_29
iget-wide v0, p0, Lch/boye/httpclientandroidlib/entity/InputStreamEntity;->length:J
:goto_2b
cmp-long v4, v0, v8
if-lez v4, :cond_44
const/4 v4, 0x0
const-wide/16 v5, 0x800
invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v5
long-to-int v5, v5
invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
move-result v4
if-eq v4, v7, :cond_44
const/4 v5, 0x0
invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
:try_end_41
.catchall {:try_start_29 .. :try_end_41} :catchall_24
int-to-long v4, v4
sub-long/2addr v0, v4
goto :goto_2b
:cond_44
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
return-void
.end method
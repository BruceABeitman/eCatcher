.class public Lch/boye/httpclientandroidlib/client/entity/DeflateDecompressingEntity;
.super Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;
.source "DeflateDecompressingEntity.java"
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
.registers 2
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
return-void
.end method
.method public bridge synthetic getContent()Ljava/io/InputStream;
.registers 2
invoke-super {p0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getContentLength()J
.registers 3
const-wide/16 v0, -0x1
return-wide v0
.end method
.method  getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
.registers 12
const/4 v0, 0x6
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v7, -0x1
new-array v1, v0, [B
new-instance v2, Ljava/io/PushbackInputStream;
invoke-direct {v2, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->read([B)I
move-result v3
if-ne v3, v7, :cond_19
new-instance v0, Ljava/io/IOException;
const-string v1, "Unable to read the response"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
new-array v0, v9, [B
new-instance v4, Ljava/util/zip/Inflater;
invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V
:goto_20
:cond_20
:try_start_20
invoke-virtual {v4, v0}, Ljava/util/zip/Inflater;->inflate([B)I
move-result v5
if-nez v5, :cond_53
invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z
move-result v6
if-eqz v6, :cond_43
new-instance v0, Ljava/io/IOException;
const-string v4, "Unable to read the response"
invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catch_34
:try_end_34
.catch Ljava/util/zip/DataFormatException; {:try_start_20 .. :try_end_34} :catch_34
move-exception v0
invoke-virtual {v2, v1, v8, v3}, Ljava/io/PushbackInputStream;->unread([BII)V
new-instance v0, Ljava/util/zip/InflaterInputStream;
new-instance v1, Ljava/util/zip/Inflater;
invoke-direct {v1, v9}, Ljava/util/zip/Inflater;-><init>(Z)V
invoke-direct {v0, v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
:goto_42
return-object v0
:try_start_43
:cond_43
invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z
move-result v6
if-nez v6, :cond_53
invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z
move-result v5
if-eqz v5, :cond_20
invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->setInput([B)V
goto :goto_20
:cond_53
if-ne v5, v7, :cond_5d
new-instance v0, Ljava/io/IOException;
const-string v4, "Unable to read the response"
invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5d
const/4 v0, 0x0
invoke-virtual {v2, v1, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V
new-instance v0, Ljava/util/zip/InflaterInputStream;
invoke-direct {v0, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_66
.catch Ljava/util/zip/DataFormatException; {:try_start_43 .. :try_end_66} :catch_34
goto :goto_42
.end method
.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
.registers 2
invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V
return-void
.end method
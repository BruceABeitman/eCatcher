.class public final Lch/boye/httpclientandroidlib/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
.registers 2
if-nez p0, :cond_3
:goto_2
:cond_2
return-void
:cond_3
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
if-eqz v0, :cond_2
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
goto :goto_2
.end method
.method public static getContentCharSet(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP entity may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x0
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_2b
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v1
array-length v2, v1
if-lez v2, :cond_2b
const/4 v2, 0x0
aget-object v1, v1, v2
const-string v2, "charset"
invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getParameterByName(Ljava/lang/String;)Lch/boye/httpclientandroidlib/NameValuePair;
move-result-object v1
if-eqz v1, :cond_2b
invoke-interface {v1}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
:cond_2b
return-object v0
.end method
.method public static getContentMimeType(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP entity may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x0
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_23
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v1
array-length v2, v1
if-lez v2, :cond_23
const/4 v0, 0x0
aget-object v0, v1, v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v0
:cond_23
return-object v0
.end method
.method public static toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B
.registers 8
const/16 v0, 0x1000
if-nez p0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP entity may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v2
if-nez v2, :cond_14
const/4 v0, 0x0
:goto_13
return-object v0
:cond_14
:try_start_14
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v3
const-wide/32 v5, 0x7fffffff
cmp-long v1, v3, v5
if-lez v1, :cond_2c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP entity too large to be buffered in memory"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_27
:try_end_27
.catchall {:try_start_14 .. :try_end_27} :catchall_27
move-exception v0
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
throw v0
:try_start_2c
:cond_2c
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v3
long-to-int v1, v3
if-gez v1, :cond_50
:goto_33
new-instance v1, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;-><init>(I)V
const/16 v0, 0x1000
new-array v0, v0, [B
:goto_3c
invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_48
const/4 v4, 0x0
invoke-virtual {v1, v0, v4, v3}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->append([BII)V
goto :goto_3c
:cond_48
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/util/ByteArrayBuffer;->toByteArray()[B
:try_end_4b
.catchall {:try_start_2c .. :try_end_4b} :catchall_27
move-result-object v0
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
goto :goto_13
:cond_50
move v0, v1
goto :goto_33
.end method
.method public static toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Lch/boye/httpclientandroidlib/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
.registers 8
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP entity may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v2
if-nez v2, :cond_12
const/4 v0, 0x0
:goto_11
return-object v0
:cond_12
:try_start_12
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v0
const-wide/32 v3, 0x7fffffff
cmp-long v0, v0, v3
if-lez v0, :cond_2a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP entity too large to be buffered in memory"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_25
:try_end_25
.catchall {:try_start_12 .. :try_end_25} :catchall_25
move-exception v0
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
throw v0
:cond_2a
:try_start_2a
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v0
long-to-int v0, v0
if-gez v0, :cond_61
const/16 v0, 0x1000
move v1, v0
:goto_34
invoke-static {p0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->getContentCharSet(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_3b
move-object v0, p1
:cond_3b
if-nez v0, :cond_3f
const-string v0, "ISO-8859-1"
:cond_3f
new-instance v3, Ljava/io/InputStreamReader;
invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
new-instance v0, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V
const/16 v1, 0x400
new-array v1, v1, [C
:goto_4d
invoke-virtual {v3, v1}, Ljava/io/Reader;->read([C)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_59
const/4 v5, 0x0
invoke-virtual {v0, v1, v5, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append([CII)V
goto :goto_4d
:cond_59
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->toString()Ljava/lang/String;
:try_end_5c
.catchall {:try_start_2a .. :try_end_5c} :catchall_25
move-result-object v0
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
goto :goto_11
:cond_61
move v1, v0
goto :goto_34
.end method
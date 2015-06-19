.class final Lcom/loopj/android/http/c;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"
.field  a:Ljava/io/InputStream;
.field  b:Ljava/io/PushbackInputStream;
.field  c:Ljava/util/zip/GZIPInputStream;
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
.registers 2
invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V
return-void
.end method
.method public final consumeContent()V
.registers 2
iget-object v0, p0, Lcom/loopj/android/http/c;->a:Ljava/io/InputStream;
invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V
iget-object v0, p0, Lcom/loopj/android/http/c;->b:Ljava/io/PushbackInputStream;
invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V
iget-object v0, p0, Lcom/loopj/android/http/c;->c:Ljava/util/zip/GZIPInputStream;
invoke-static {v0}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V
invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V
return-void
.end method
.method public final getContent()Ljava/io/InputStream;
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v6, 0x2
iget-object v2, p0, Lcom/loopj/android/http/c;->wrappedEntity:Lorg/apache/http/HttpEntity;
invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v2
iput-object v2, p0, Lcom/loopj/android/http/c;->a:Ljava/io/InputStream;
new-instance v2, Ljava/io/PushbackInputStream;
iget-object v3, p0, Lcom/loopj/android/http/c;->a:Ljava/io/InputStream;
invoke-direct {v2, v3, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
iput-object v2, p0, Lcom/loopj/android/http/c;->b:Ljava/io/PushbackInputStream;
iget-object v2, p0, Lcom/loopj/android/http/c;->b:Ljava/io/PushbackInputStream;
if-eqz v2, :cond_43
new-array v3, v6, [B
invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I
move-result v4
invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread([B)V
aget-byte v2, v3, v1
and-int/lit16 v2, v2, 0xff
aget-byte v3, v3, v0
shl-int/lit8 v3, v3, 0x8
const v5, 0xff00
and-int/2addr v3, v5
or-int/2addr v2, v3
if-ne v4, v6, :cond_43
const v3, 0x8b1f
if-ne v3, v2, :cond_43
:goto_35
if-eqz v0, :cond_45
new-instance v0, Ljava/util/zip/GZIPInputStream;
iget-object v1, p0, Lcom/loopj/android/http/c;->b:Ljava/io/PushbackInputStream;
invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lcom/loopj/android/http/c;->c:Ljava/util/zip/GZIPInputStream;
iget-object v0, p0, Lcom/loopj/android/http/c;->c:Ljava/util/zip/GZIPInputStream;
:goto_42
return-object v0
:cond_43
move v0, v1
goto :goto_35
:cond_45
iget-object v0, p0, Lcom/loopj/android/http/c;->b:Ljava/io/PushbackInputStream;
goto :goto_42
.end method
.method public final getContentLength()J
.registers 3
iget-object v0, p0, Lcom/loopj/android/http/c;->wrappedEntity:Lorg/apache/http/HttpEntity;
if-nez v0, :cond_7
const-wide/16 v0, 0x0
:goto_6
return-wide v0
:cond_7
iget-object v0, p0, Lcom/loopj/android/http/c;->wrappedEntity:Lorg/apache/http/HttpEntity;
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v0
goto :goto_6
.end method
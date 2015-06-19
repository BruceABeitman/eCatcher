.class public abstract Lcom/instagram/common/a/a/s;
.super Ljava/lang/Object;
.source "StreamResponseParser.java"
.implements Lcom/instagram/common/a/a/p;
.implements Lcom/instagram/common/a/a/r;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lch/boye/httpclientandroidlib/HttpResponse;Lcom/instagram/common/a/a/r;)Lcom/instagram/common/a/a/o;
.registers 5
const/4 v1, 0x0
:try_start_1
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
if-eqz v0, :cond_14
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
sget-object v2, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
:cond_14
invoke-interface {p1, v1}, Lcom/instagram/common/a/a/r;->a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/a/a/o;
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v2
invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v2
invoke-interface {v0, v2}, Lcom/instagram/common/a/a/o;->a(I)V
:try_end_25
.catchall {:try_start_1 .. :try_end_25} :catchall_2b
if-eqz v1, :cond_2a
:try_start_27
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->close()V
:cond_2a
:try_end_2a
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_32
:goto_2a
return-object v0
:catchall_2b
move-exception v0
if-eqz v1, :cond_31
:try_start_2e
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->close()V
:goto_31
:cond_31
:try_end_31
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_34
throw v0
:catch_32
move-exception v1
goto :goto_2a
:catch_34
move-exception v1
goto :goto_31
.end method
.method private b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/common/a/a/o;
.registers 3
invoke-static {p1, p0}, Lcom/instagram/common/a/a/s;->a(Lch/boye/httpclientandroidlib/HttpResponse;Lcom/instagram/common/a/a/r;)Lcom/instagram/common/a/a/o;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/a/a/s;->b(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/common/a/a/o;
move-result-object v0
return-object v0
.end method
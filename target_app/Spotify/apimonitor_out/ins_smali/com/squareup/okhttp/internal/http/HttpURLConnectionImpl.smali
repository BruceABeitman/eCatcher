.class public final Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"
.field final a:Lcom/squareup/okhttp/m;
.field protected b:Ljava/io/IOException;
.field protected c:Lcom/squareup/okhttp/internal/http/p;
.field  d:Lcom/squareup/okhttp/i;
.field private e:Lcom/squareup/okhttp/internal/http/f;
.field private f:J
.field private g:I
.field private h:Lcom/squareup/okhttp/p;
.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/m;)V
.registers 5
invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V
new-instance v0, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->f:J
iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
return-void
.end method
.method private a(Ljava/lang/String;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/http/ag;)Lcom/squareup/okhttp/internal/http/p;
.registers 11
const/4 v1, 0x0
new-instance v0, Lcom/squareup/okhttp/internal/http/w;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/w;-><init>()V
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/net/URL;)Lcom/squareup/okhttp/internal/http/w;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
move-result-object v2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v3
move v0, v1
:goto_19
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v4
if-ge v0, v4, :cond_2d
invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v4, v5}, Lcom/squareup/okhttp/internal/http/w;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
add-int/lit8 v0, v0, 0x1
goto :goto_19
:cond_2d
invoke-static {p1}, Lcom/squareup/okhttp/internal/http/q;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7c
iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->f:J
const-wide/16 v5, -0x1
cmp-long v0, v3, v5
if-eqz v0, :cond_6c
const-string v0, "Content-Length"
iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->f:J
invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
move v3, v1
:goto_47
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/w;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v2
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v1}, Lcom/squareup/okhttp/m;->g()Lcom/squareup/okhttp/n;
move-result-object v0
if-eqz v0, :cond_63
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getUseCaches()Z
move-result v0
if-nez v0, :cond_63
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->o()Lcom/squareup/okhttp/m;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->f()Lcom/squareup/okhttp/m;
move-result-object v1
:cond_63
new-instance v0, Lcom/squareup/okhttp/internal/http/p;
const/4 v5, 0x0
move-object v4, p2
move-object v6, p3
invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/http/p;-><init>(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/u;ZLcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/http/ah;Lcom/squareup/okhttp/internal/http/ag;)V
return-object v0
:cond_6c
iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->chunkLength:I
if-lez v0, :cond_79
const-string v0, "Transfer-Encoding"
const-string v3, "chunked"
invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
move v3, v1
goto :goto_47
:cond_79
const/4 v1, 0x1
move v3, v1
goto :goto_47
:cond_7c
move v3, v1
goto :goto_47
.end method
.method private a()V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b:Ljava/io/IOException;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b:Ljava/io/IOException;
throw v0
:cond_7
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
if-eqz v0, :cond_c
:goto_b
return-void
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z
:try_start_f
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->doOutput:Z
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
const-string v1, "GET"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
const-string v0, "POST"
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
:cond_21
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/http/ag;)Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
:try_end_2b
.catch Ljava/io/IOException; {:try_start_f .. :try_end_2b} :catch_2c
goto :goto_b
:catch_2c
move-exception v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b:Ljava/io/IOException;
throw v0
:cond_30
:try_start_30
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/q;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_21
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not support writing"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_53
.catch Ljava/io/IOException; {:try_start_30 .. :try_end_53} :catch_2c
.end method
.method private a(Ljava/lang/String;Z)V
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz p2, :cond_10
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->n()Ljava/util/List;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_10
const-string v0, ","
const/4 v2, -0x1
invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_19
if-ge v0, v3, :cond_32
aget-object v4, v2, v0
:try_start_1d
invoke-static {v4}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;
move-result-object v4
invoke-static {v4}, Lcom/squareup/okhttp/internal/o;->a(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/Protocol;
move-result-object v4
invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_28
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_2b
add-int/lit8 v0, v0, 0x1
goto :goto_19
:catch_2b
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_32
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/m;->a(Ljava/util/List;)Lcom/squareup/okhttp/m;
return-void
.end method
.method private a(Z)Z
.registers 4
:try_start_0
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->a()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->k()Lcom/squareup/okhttp/p;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->h:Lcom/squareup/okhttp/p;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->j()Lcom/squareup/okhttp/g;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->j()Lcom/squareup/okhttp/g;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->k()Lcom/squareup/okhttp/i;
move-result-object v0
:goto_1f
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->d:Lcom/squareup/okhttp/i;
if-eqz p1, :cond_28
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->p()V
:cond_28
:try_end_28
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_2c
const/4 v0, 0x1
:goto_29
return v0
:cond_2a
const/4 v0, 0x0
goto :goto_1f
:catch_2c
move-exception v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/http/p;->a(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/http/p;
move-result-object v1
if-eqz v1, :cond_39
iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
const/4 v0, 0x0
goto :goto_29
:cond_39
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b:Ljava/io/IOException;
throw v0
.end method
.method private b()Lcom/squareup/okhttp/internal/http/p;
.registers 7
const/4 v3, 0x1
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->f()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
:goto_e
return-object v0
:cond_f
sget-object v4, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->c:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
if-ne v1, v4, :cond_18
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->l()V
:cond_18
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->n()Lcom/squareup/okhttp/g;
move-result-object v1
check-cast v0, Lcom/squareup/okhttp/internal/http/ag;
invoke-direct {p0, v2, v1, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/http/ag;)Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
:cond_26
invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a(Z)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->j()Lcom/squareup/okhttp/g;
move-result-object v0
if-eqz v0, :cond_52
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->d()Lcom/squareup/okhttp/p;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/p;->a()Ljava/net/Proxy;
move-result-object v0
:goto_3c
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I
move-result v1
sparse-switch v1, :sswitch_data_174
:cond_43
sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
move-object v1, v0
:goto_46
sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
if-ne v1, v0, :cond_13a
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->l()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
goto :goto_e
:cond_52
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Proxy;
move-result-object v0
goto :goto_3c
:sswitch_59
invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v1
sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
if-eq v1, v2, :cond_69
new-instance v0, Ljava/net/ProtocolException;
const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_69
:cond_69
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v1}, Lcom/squareup/okhttp/m;->j()Lcom/squareup/okhttp/j;
move-result-object v1
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/g;->a(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/internal/http/z;Ljava/net/Proxy;)Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
if-eqz v0, :cond_43
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->h()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->b()Lcom/squareup/okhttp/internal/http/f;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->b:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
move-object v1, v0
goto :goto_46
:sswitch_89
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z
move-result v0
if-eqz v0, :cond_43
iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->g:I
const/16 v2, 0x14
if-le v0, v2, :cond_b0
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Too many redirects: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->g:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b0
const/16 v0, 0x133
if-ne v1, v0, :cond_c8
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
const-string v1, "GET"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c8
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
const-string v1, "HEAD"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
:cond_c8
const-string v0, "Location"
invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_43
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
new-instance v2, Ljava/net/URL;
invoke-direct {v2, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v0
const-string v2, "https"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f5
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v0
const-string v2, "http"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
:cond_f5
invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_10d
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->l()Z
move-result v0
if-eqz v0, :cond_43
:cond_10d
invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v0
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/net/URL;)I
move-result v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/net/URL;)I
move-result v1
if-ne v0, v1, :cond_133
move v0, v3
:goto_128
if-eqz v4, :cond_135
if-eqz v0, :cond_135
if-eqz v2, :cond_135
sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->b:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
move-object v1, v0
goto/16 :goto_46
:cond_133
const/4 v0, 0x0
goto :goto_128
:cond_135
sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->c:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
move-object v1, v0
goto/16 :goto_46
:cond_13a
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->d()Lcom/squareup/okhttp/internal/a/o;
move-result-object v0
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v4
invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v4
const/16 v5, 0x12c
if-eq v4, v5, :cond_15c
const/16 v5, 0x12d
if-eq v4, v5, :cond_15c
const/16 v5, 0x12e
if-eq v4, v5, :cond_15c
const/16 v5, 0x12f
if-ne v4, v5, :cond_166
:cond_15c
const-string v2, "GET"
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
const-string v5, "Content-Length"
invoke-virtual {v0, v5}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
const/4 v0, 0x0
:cond_166
if-eqz v0, :cond_f
instance-of v5, v0, Lcom/squareup/okhttp/internal/http/ag;
if-nez v5, :cond_f
new-instance v0, Ljava/net/HttpRetryException;
const-string v1, "Cannot retry streamed HTTP body"
invoke-direct {v0, v1, v4}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V
throw v0
:sswitch_data_174
.sparse-switch
0x12c -> :sswitch_89
0x12d -> :sswitch_89
0x12e -> :sswitch_89
0x12f -> :sswitch_89
0x133 -> :sswitch_89
0x191 -> :sswitch_69
0x197 -> :sswitch_59
.end sparse-switch
.end method
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot add request property after connection is made"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-nez p1, :cond_16
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "field == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
if-nez p2, :cond_34
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Ignoring header "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " because its value was null."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/k;->a(Ljava/lang/String;)V
:goto_33
return-void
:cond_34
const-string v0, "X-Android-Transports"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_44
const-string v0, "X-Android-Protocols"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_49
:cond_44
const/4 v0, 0x1
invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Z)V
goto :goto_33
:cond_49
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
goto :goto_33
.end method
.method public final connect()V
.registers 2
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a()V
:cond_3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a(Z)Z
move-result v0
if-eqz v0, :cond_3
return-void
.end method
.method public final disconnect()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
if-nez v0, :cond_5
:goto_4
return-void
:try_start_5
:cond_5
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->m()V
:try_end_a
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b
goto :goto_4
:catch_b
move-exception v0
goto :goto_4
.end method
.method public final getConnectTimeout()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->a()I
move-result v0
return v0
.end method
.method public final getErrorStream()Ljava/io/InputStream;
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v1
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->o()Z
move-result v2
if-eqz v2, :cond_1b
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v2
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v2
const/16 v3, 0x190
if-lt v2, v3, :cond_1b
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->i()Ljava/io/InputStream;
:try_end_1a
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1c
move-result-object v0
:cond_1b
:goto_1b
return-object v0
:catch_1c
move-exception v1
goto :goto_1b
.end method
.method public final getHeaderField(I)Ljava/lang/String;
.registers 3
:try_start_0
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
:try_end_f
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
const/4 v0, 0x0
goto :goto_10
.end method
.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
if-nez p1, :cond_f
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->b()Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->a(Ljava/lang/String;)Ljava/lang/String;
:try_end_16
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18
move-result-object v0
goto :goto_e
:catch_18
move-exception v0
const/4 v0, 0x0
goto :goto_e
.end method
.method public final getHeaderFieldKey(I)Ljava/lang/String;
.registers 3
:try_start_0
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
:try_end_f
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
const/4 v0, 0x0
goto :goto_10
.end method
.method public final getHeaderFields()Ljava/util/Map;
.registers 3
:try_start_0
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v1
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/Map;
:try_end_13
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15
move-result-object v0
:goto_14
return-object v0
:catch_15
move-exception v0
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
goto :goto_14
.end method
.method public final getInputStream()Ljava/io/InputStream;
.registers 4
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->doInput:Z
if-nez v0, :cond_c
new-instance v0, Ljava/net/ProtocolException;
const-string v1, "This protocol does not support input"
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I
move-result v1
const/16 v2, 0x190
if-lt v1, v2, :cond_24
new-instance v0, Ljava/io/FileNotFoundException;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;
invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->i()Ljava/io/InputStream;
move-result-object v0
if-nez v0, :cond_43
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No response body exists; responseCode="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_43
return-object v0
.end method
.method public final getOutputStream()Ljava/io/OutputStream;
.registers 4
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connect()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->e()Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
if-nez v0, :cond_22
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "method does not support a request body: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_22
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/p;->f()Z
move-result v1
if-eqz v1, :cond_32
new-instance v0, Ljava/net/ProtocolException;
const-string v1, "cannot write request body after response has been read"
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_32
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->e()Ljava/io/OutputStream;
move-result-object v0
return-object v0
.end method
.method public final getPermission()Ljava/security/Permission;
.registers 5
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/net/URL;)I
move-result v0
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->usingProxy()Z
move-result v2
if-eqz v2, :cond_2a
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Proxy;
move-result-object v0
invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;
move-result-object v0
check-cast v0, Ljava/net/InetSocketAddress;
invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
move-result v0
:cond_2a
new-instance v2, Ljava/net/SocketPermission;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "connect, resolve"
invoke-direct {v2, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v2
.end method
.method public final getReadTimeout()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->b()I
move-result v0
return v0
.end method
.method public final getRequestProperties()Ljava/util/Map;
.registers 3
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot access request header fields after connection is set"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/f;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public final getResponseCode()I
.registers 2
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v0
return v0
.end method
.method public final getResponseMessage()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->b()Lcom/squareup/okhttp/internal/http/p;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final setConnectTimeout(I)V
.registers 6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
int-to-long v1, p1
sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/m;->a(JLjava/util/concurrent/TimeUnit;)V
return-void
.end method
.method public final setFixedLengthStreamingMode(I)V
.registers 4
int-to-long v0, p1
invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V
return-void
.end method
.method public final setFixedLengthStreamingMode(J)V
.registers 5
iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already connected"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->chunkLength:I
if-lez v0, :cond_18
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already in chunked mode"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "contentLength < 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->f:J
const-wide/32 v0, 0x7fffffff
invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I
return-void
.end method
.method public final setIfModifiedSince(J)V
.registers 8
invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V
iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->ifModifiedSince:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
const-string v1, "If-Modified-Since"
new-instance v2, Ljava/util/Date;
iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->ifModifiedSince:J
invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
invoke-static {v2}, Lcom/squareup/okhttp/internal/http/o;->a(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
const-string v1, "If-Modified-Since"
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
goto :goto_1d
.end method
.method public final setReadTimeout(I)V
.registers 6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
int-to-long v1, p1
sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/m;->b(JLjava/util/concurrent/TimeUnit;)V
return-void
.end method
.method public final setRequestMethod(Ljava/lang/String;)V
.registers 5
sget-object v0, Lcom/squareup/okhttp/internal/http/q;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_29
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Expected one of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/squareup/okhttp/internal/http/q;->a:Ljava/util/Set;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " but was "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;
return-void
.end method
.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot set request property after connection is made"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-nez p1, :cond_16
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "field == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
if-nez p2, :cond_34
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Ignoring header "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " because its value was null."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/k;->a(Ljava/lang/String;)V
:goto_33
return-void
:cond_34
const-string v0, "X-Android-Transports"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_44
const-string v0, "X-Android-Protocols"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_49
:cond_44
const/4 v0, 0x0
invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Z)V
goto :goto_33
:cond_49
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->e:Lcom/squareup/okhttp/internal/http/f;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
goto :goto_33
.end method
.method public final usingProxy()Z
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->h:Lcom/squareup/okhttp/p;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->h:Lcom/squareup/okhttp/p;
invoke-virtual {v0}, Lcom/squareup/okhttp/p;->a()Ljava/net/Proxy;
move-result-object v0
:goto_a
if-eqz v0, :cond_1d
invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v0
sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
if-eq v0, v1, :cond_1d
const/4 v0, 0x1
:goto_15
return v0
:cond_16
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Proxy;
move-result-object v0
goto :goto_a
:cond_1d
const/4 v0, 0x0
goto :goto_15
.end method
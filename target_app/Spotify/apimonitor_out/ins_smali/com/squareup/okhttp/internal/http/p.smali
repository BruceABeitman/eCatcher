.class public final Lcom/squareup/okhttp/internal/http/p;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Lcom/squareup/okhttp/m;
.field  b:J
.field public final c:Z
.field private d:Lcom/squareup/okhttp/g;
.field private e:Lcom/squareup/okhttp/internal/http/ah;
.field private f:Lcom/squareup/okhttp/p;
.field private g:Lcom/squareup/okhttp/internal/http/al;
.field private h:Z
.field private i:Lcom/squareup/okhttp/internal/http/u;
.field private j:Lcom/squareup/okhttp/internal/http/u;
.field private k:Lcom/squareup/okhttp/internal/a/o;
.field private l:Lcom/squareup/okhttp/internal/a/b;
.field private m:Lcom/squareup/okhttp/ResponseSource;
.field private n:Lcom/squareup/okhttp/internal/http/z;
.field private o:Lcom/squareup/okhttp/internal/a/p;
.field private p:Lcom/squareup/okhttp/internal/a/p;
.field private q:Ljava/io/InputStream;
.field private r:Lcom/squareup/okhttp/internal/http/z;
.field private s:Ljava/net/CacheRequest;
.method public constructor <init>(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/u;ZLcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/http/ah;Lcom/squareup/okhttp/internal/http/ag;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/p;->b:J
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
iput-object p2, p0, Lcom/squareup/okhttp/internal/http/p;->i:Lcom/squareup/okhttp/internal/http/u;
iput-object p2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
iput-boolean p3, p0, Lcom/squareup/okhttp/internal/http/p;->c:Z
iput-object p4, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
iput-object p5, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
iput-object p6, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
if-eqz p4, :cond_21
invoke-virtual {p4, p0}, Lcom/squareup/okhttp/g;->a(Ljava/lang/Object;)V
invoke-virtual {p4}, Lcom/squareup/okhttp/g;->d()Lcom/squareup/okhttp/p;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->f:Lcom/squareup/okhttp/p;
:goto_20
return-void
:cond_21
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->f:Lcom/squareup/okhttp/p;
goto :goto_20
.end method
.method private static a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/z;
.registers 9
const/4 v1, 0x0
new-instance v2, Lcom/squareup/okhttp/internal/http/f;
invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/f;-><init>()V
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v3
move v0, v1
:goto_b
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v4
if-ge v0, v4, :cond_3b
invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v5
const-string v6, "Warning"
invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_29
const-string v6, "1"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_38
:cond_29
invoke-static {v4}, Lcom/squareup/okhttp/internal/http/p;->a(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_35
invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/http/z;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_38
:cond_35
invoke-virtual {v2, v4, v5}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
:cond_38
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_3b
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
:goto_3f
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v3
if-ge v1, v3, :cond_59
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/squareup/okhttp/internal/http/p;->a(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_56
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;
:cond_56
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:cond_59
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/z;->i()Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/net/URL;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/net/URL;)I
move-result v0
invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/lang/String;)I
move-result v1
if-eq v0, v1, :cond_2e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/net/URL;->getPort()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2d
return-object v0
:cond_2e
invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v0
goto :goto_2d
.end method
.method private a(Lcom/squareup/okhttp/internal/a/p;)V
.registers 5
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/p;->o:Lcom/squareup/okhttp/internal/a/p;
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/p;->h:Z
if-eqz v0, :cond_36
const-string v0, "gzip"
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
const-string v2, "Content-Encoding"
invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/z;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->i()Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
const-string v1, "Content-Encoding"
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
const-string v1, "Content-Length"
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
new-instance v0, Lcom/squareup/okhttp/internal/a/g;
invoke-direct {v0, p1}, Lcom/squareup/okhttp/internal/a/g;-><init>(Lcom/squareup/okhttp/internal/a/p;)V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->p:Lcom/squareup/okhttp/internal/a/p;
:goto_35
return-void
:cond_36
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/p;->p:Lcom/squareup/okhttp/internal/a/p;
goto :goto_35
.end method
.method private static a(Ljava/lang/String;)Z
.registers 2
const-string v0, "Connection"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "Keep-Alive"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "Proxy-Authenticate"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "Proxy-Authorization"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "TE"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "Trailers"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "Transfer-Encoding"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const-string v0, "Upgrade"
invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_42
const/4 v0, 0x1
:goto_41
return v0
:cond_42
const/4 v0, 0x0
goto :goto_41
.end method
.method private q()Lcom/squareup/okhttp/internal/http/z;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->i()Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/aa;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
return-object v0
.end method
.method private static r()Ljava/lang/String;
.registers 2
const-string v0, "http.agent"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_9
:goto_8
return-object v0
:cond_9
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Java"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, "java.version"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method public final a(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/http/p;
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0, v3, p1}, Lcom/squareup/okhttp/internal/http/ah;->a(Lcom/squareup/okhttp/g;Ljava/io/IOException;)V
:cond_11
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
instance-of v0, v0, Lcom/squareup/okhttp/internal/http/ag;
if-eqz v0, :cond_49
:cond_1b
move v0, v2
:goto_1c
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
if-nez v3, :cond_24
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-eqz v3, :cond_47
:cond_24
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
if-eqz v3, :cond_30
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/ah;->a()Z
move-result v3
if-eqz v3, :cond_47
:cond_30
instance-of v3, p1, Ljavax/net/ssl/SSLHandshakeException;
if-eqz v3, :cond_4b
invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;
move-result-object v3
instance-of v3, v3, Ljava/security/cert/CertificateException;
if-eqz v3, :cond_4b
move v3, v2
:goto_3d
instance-of v4, p1, Ljava/net/ProtocolException;
if-nez v3, :cond_4d
if-nez v4, :cond_4d
:goto_43
if-eqz v2, :cond_47
if-nez v0, :cond_4f
:cond_47
const/4 v0, 0x0
:goto_48
return-object v0
:cond_49
move v0, v1
goto :goto_1c
:cond_4b
move v3, v1
goto :goto_3d
:cond_4d
move v2, v1
goto :goto_43
:cond_4f
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/p;->n()Lcom/squareup/okhttp/g;
move-result-object v4
new-instance v0, Lcom/squareup/okhttp/internal/http/p;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->i:Lcom/squareup/okhttp/internal/http/u;
iget-boolean v3, p0, Lcom/squareup/okhttp/internal/http/p;->c:Z
iget-object v5, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
iget-object v6, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
check-cast v6, Lcom/squareup/okhttp/internal/http/ag;
invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/http/p;-><init>(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/u;ZLcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/http/ah;Lcom/squareup/okhttp/internal/http/ag;)V
goto :goto_48
.end method
.method public final a()V
.registers 10
const/4 v1, 0x1
const/4 v8, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
if-eqz v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
if-eqz v0, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_11
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->g()Lcom/squareup/okhttp/internal/http/w;
move-result-object v0
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/u;->i()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_28
invoke-static {}, Lcom/squareup/okhttp/internal/http/p;->r()Ljava/lang/String;
move-result-object v2
const-string v3, "User-Agent"
invoke-virtual {v0, v3, v2}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
:cond_28
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
const-string v3, "Host"
invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_41
const-string v2, "Host"
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;
move-result-object v3
invoke-static {v3}, Lcom/squareup/okhttp/internal/http/p;->a(Ljava/net/URL;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
:cond_41
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-eqz v2, :cond_4d
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v2}, Lcom/squareup/okhttp/g;->m()I
move-result v2
if-eqz v2, :cond_5e
:cond_4d
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
const-string v3, "Connection"
invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_5e
const-string v2, "Connection"
const-string v3, "Keep-Alive"
invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
:cond_5e
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
const-string v3, "Accept-Encoding"
invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_71
iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/p;->h:Z
const-string v2, "Accept-Encoding"
const-string v3, "gzip"
invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
:cond_71
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/p;->c()Z
move-result v2
if-eqz v2, :cond_88
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
const-string v3, "Content-Type"
invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_88
const-string v2, "Content-Type"
const-string v3, "application/x-www-form-urlencoded"
invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
:cond_88
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v2}, Lcom/squareup/okhttp/m;->e()Ljava/net/CookieHandler;
move-result-object v2
if-eqz v2, :cond_a9
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/w;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v3
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/u;->e()Lcom/squareup/okhttp/internal/http/e;
move-result-object v3
invoke-static {v3, v8}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/Map;
move-result-object v3
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/u;->b()Ljava/net/URI;
move-result-object v4
invoke-virtual {v2, v4, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
move-result-object v2
invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/w;Ljava/util/Map;)V
:cond_a9
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/w;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->g()Lcom/squareup/okhttp/n;
move-result-object v2
if-eqz v2, :cond_110
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-interface {v2, v0}, Lcom/squareup/okhttp/n;->a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
:goto_bd
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
new-instance v5, Lcom/squareup/okhttp/internal/http/b;
iget-object v6, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-direct {v5, v3, v4, v6, v0}, Lcom/squareup/okhttp/internal/http/b;-><init>(JLcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;)V
invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/b;->a()Lcom/squareup/okhttp/internal/http/a;
move-result-object v3
iget-object v4, v3, Lcom/squareup/okhttp/internal/http/a;->c:Lcom/squareup/okhttp/ResponseSource;
iput-object v4, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
iget-object v4, v3, Lcom/squareup/okhttp/internal/http/a;->a:Lcom/squareup/okhttp/internal/http/u;
iput-object v4, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
if-eqz v2, :cond_db
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
invoke-interface {v2, v4}, Lcom/squareup/okhttp/n;->a(Lcom/squareup/okhttp/ResponseSource;)V
:cond_db
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
sget-object v4, Lcom/squareup/okhttp/ResponseSource;->c:Lcom/squareup/okhttp/ResponseSource;
if-eq v2, v4, :cond_e5
iget-object v2, v3, Lcom/squareup/okhttp/internal/http/a;->b:Lcom/squareup/okhttp/internal/http/z;
iput-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
:cond_e5
if-eqz v0, :cond_fa
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
sget-object v3, Lcom/squareup/okhttp/ResponseSource;->a:Lcom/squareup/okhttp/ResponseSource;
if-eq v2, v3, :cond_f1
sget-object v3, Lcom/squareup/okhttp/ResponseSource;->b:Lcom/squareup/okhttp/ResponseSource;
if-ne v2, v3, :cond_112
:cond_f1
:goto_f1
if-nez v1, :cond_fa
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
:cond_fa
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseSource;->a()Z
move-result v0
if-eqz v0, :cond_25f
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-nez v0, :cond_1ef
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-eqz v0, :cond_114
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_110
move-object v0, v8
goto :goto_bd
:cond_112
const/4 v1, 0x0
goto :goto_f1
:cond_114
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
if-nez v0, :cond_191
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_12a
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_13a
:cond_12a
new-instance v0, Ljava/net/UnknownHostException;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;
move-result-object v1
invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13a
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->l()Z
move-result v0
if-eqz v0, :cond_28b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->h()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->i()Ljavax/net/ssl/HostnameVerifier;
move-result-object v4
:goto_14e
new-instance v0, Lcom/squareup/okhttp/a;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;
move-result-object v2
invoke-static {v2}, Lcom/squareup/okhttp/internal/o;->a(Ljava/net/URL;)I
move-result v2
iget-object v5, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v5}, Lcom/squareup/okhttp/m;->j()Lcom/squareup/okhttp/j;
move-result-object v5
iget-object v6, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v6}, Lcom/squareup/okhttp/m;->c()Ljava/net/Proxy;
move-result-object v6
iget-object v7, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v7}, Lcom/squareup/okhttp/m;->n()Ljava/util/List;
move-result-object v7
invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/a;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/j;Ljava/net/Proxy;Ljava/util/List;)V
new-instance v1, Lcom/squareup/okhttp/internal/http/ah;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/u;->b()Ljava/net/URI;
move-result-object v3
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v2}, Lcom/squareup/okhttp/m;->d()Ljava/net/ProxySelector;
move-result-object v4
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v2}, Lcom/squareup/okhttp/m;->k()Lcom/squareup/okhttp/h;
move-result-object v5
sget-object v6, Lcom/squareup/okhttp/internal/i;->a:Lcom/squareup/okhttp/internal/i;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v2}, Lcom/squareup/okhttp/m;->m()Lcom/squareup/okhttp/q;
move-result-object v7
move-object v2, v0
invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/http/ah;-><init>(Lcom/squareup/okhttp/a;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/internal/i;Lcom/squareup/okhttp/q;)V
iput-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
:cond_191
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->e:Lcom/squareup/okhttp/internal/http/ah;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ah;->a(Ljava/lang/String;)Lcom/squareup/okhttp/g;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0, p0}, Lcom/squareup/okhttp/g;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->c()Z
move-result v0
if-nez v0, :cond_22b
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->a()I
move-result v2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->b()I
move-result v3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->l()Z
move-result v0
if-nez v0, :cond_205
:goto_1c2
invoke-virtual {v1, v2, v3, v8}, Lcom/squareup/okhttp/g;->a(IILcom/squareup/okhttp/r;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->l()Z
move-result v0
if-eqz v0, :cond_1d8
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->k()Lcom/squareup/okhttp/h;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/h;->b(Lcom/squareup/okhttp/g;)V
:cond_1d8
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->m()Lcom/squareup/okhttp/q;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v1}, Lcom/squareup/okhttp/g;->d()Lcom/squareup/okhttp/p;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/q;->b(Lcom/squareup/okhttp/p;)V
:cond_1e7
:goto_1e7
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->d()Lcom/squareup/okhttp/p;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->f:Lcom/squareup/okhttp/p;
:cond_1ef
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->a()Ljava/lang/Object;
move-result-object v0
if-eq v0, p0, :cond_23f
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->l()Z
move-result v0
if-nez v0, :cond_23f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_205
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->i()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_211
invoke-static {}, Lcom/squareup/okhttp/internal/http/p;->r()Ljava/lang/String;
move-result-object v0
:cond_211
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;
move-result-object v4
new-instance v8, Lcom/squareup/okhttp/r;
invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;
move-result-object v5
invoke-static {v4}, Lcom/squareup/okhttp/internal/o;->a(Ljava/net/URL;)I
move-result v4
iget-object v6, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/u;->j()Ljava/lang/String;
move-result-object v6
invoke-direct {v8, v5, v4, v0, v6}, Lcom/squareup/okhttp/r;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_1c2
:cond_22b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->l()Z
move-result v0
if-nez v0, :cond_1e7
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v1}, Lcom/squareup/okhttp/m;->b()I
move-result v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/g;->b(I)V
goto :goto_1e7
:cond_23f
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0, p0}, Lcom/squareup/okhttp/g;->a(Lcom/squareup/okhttp/internal/http/p;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/internal/http/al;
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/p;->c()Z
move-result v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
if-nez v0, :cond_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/http/al;->a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/a/o;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
goto/16 :goto_6
:cond_25f
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-eqz v0, :cond_270
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->k()Lcom/squareup/okhttp/h;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/g;)V
iput-object v8, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
:cond_270
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/aa;->b()Lcom/squareup/okhttp/internal/a/p;
move-result-object v0
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/internal/a/p;)V
goto/16 :goto_6
:cond_28b
move-object v4, v8
move-object v3, v8
goto/16 :goto_14e
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/e;)V
.registers 5
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->e()Ljava/net/CookieHandler;
move-result-object v0
if-eqz v0, :cond_16
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/u;->b()Ljava/net/URI;
move-result-object v1
const/4 v2, 0x0
invoke-static {p1, v2}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/Map;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
:cond_16
return-void
.end method
.method public final b()V
.registers 5
iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/p;->b:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/p;->b:J
return-void
.end method
.method final c()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/q;->b(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final d()Lcom/squareup/okhttp/internal/a/o;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
return-object v0
.end method
.method public final e()Lcom/squareup/okhttp/internal/a/b;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/p;->d()Lcom/squareup/okhttp/internal/a/o;
move-result-object v0
if-eqz v0, :cond_12
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
goto :goto_4
:cond_12
const/4 v0, 0x0
goto :goto_4
.end method
.method public final f()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final g()Lcom/squareup/okhttp/internal/http/u;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
return-object v0
.end method
.method public final h()Lcom/squareup/okhttp/internal/http/z;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
return-object v0
.end method
.method public final i()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->q:Ljava/io/InputStream;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_f
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->p:Lcom/squareup/okhttp/internal/a/p;
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;
move-result-object v0
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->n()Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->q:Ljava/io/InputStream;
goto :goto_4
.end method
.method public final j()Lcom/squareup/okhttp/g;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
return-object v0
.end method
.method public final k()Lcom/squareup/okhttp/p;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->f:Lcom/squareup/okhttp/p;
return-object v0
.end method
.method public final l()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/al;->c()V
:cond_d
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
return-void
.end method
.method public final m()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
invoke-interface {v0, p0}, Lcom/squareup/okhttp/internal/http/al;->a(Lcom/squareup/okhttp/internal/http/p;)V
:cond_9
return-void
.end method
.method public final n()Lcom/squareup/okhttp/g;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
:goto_a
:cond_a
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->p:Lcom/squareup/okhttp/internal/a/p;
if-nez v1, :cond_20
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
:goto_15
return-object v0
:cond_16
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
goto :goto_a
:cond_20
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->p:Lcom/squareup/okhttp/internal/a/p;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->q:Ljava/io/InputStream;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
if-eqz v1, :cond_3e
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/al;->d()Z
move-result v1
if-nez v1, :cond_3e
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
goto :goto_15
:cond_3e
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
if-eqz v1, :cond_4c
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v1}, Lcom/squareup/okhttp/g;->b()Z
move-result v1
if-nez v1, :cond_4c
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
:cond_4c
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
move-object v0, v1
goto :goto_15
.end method
.method public final o()Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;
move-result-object v2
const-string v3, "HEAD"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_11
:cond_10
:goto_10
return v0
:cond_11
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v2
const/16 v3, 0x64
if-lt v2, v3, :cond_1f
const/16 v3, 0xc8
if-lt v2, v3, :cond_29
:cond_1f
const/16 v3, 0xcc
if-eq v2, v3, :cond_29
const/16 v3, 0x130
if-eq v2, v3, :cond_29
move v0, v1
goto :goto_10
:cond_29
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-static {v2}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/z;)J
move-result-wide v2
const-wide/16 v4, -0x1
cmp-long v2, v2, v4
if-nez v2, :cond_45
const-string v2, "chunked"
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
const-string v4, "Transfer-Encoding"
invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/z;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_10
:cond_45
move v0, v1
goto :goto_10
.end method
.method public final p()V
.registers 7
const-wide/16 v4, -0x1
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
if-eqz v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
if-nez v0, :cond_13
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "call sendRequest() first!"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseSource;->a()Z
move-result v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->b()Lcom/squareup/okhttp/internal/a/i;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_34
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
:cond_34
iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/p;->b:J
cmp-long v0, v0, v4
if-nez v0, :cond_6f
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-static {v0}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/u;)J
move-result-wide v0
cmp-long v0, v0, v4
if-nez v0, :cond_68
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
instance-of v0, v0, Lcom/squareup/okhttp/internal/http/ag;
if-eqz v0, :cond_68
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
check-cast v0, Lcom/squareup/okhttp/internal/http/ag;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ag;->b()J
move-result-wide v0
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/u;->g()Lcom/squareup/okhttp/internal/http/w;
move-result-object v2
const-string v3, "Content-Length"
invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/w;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
:cond_68
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/http/al;->b(Lcom/squareup/okhttp/internal/http/u;)V
:cond_6f
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
if-eqz v0, :cond_8b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
if-eqz v0, :cond_12b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->l:Lcom/squareup/okhttp/internal/a/b;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->close()V
:goto_7c
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
instance-of v0, v0, Lcom/squareup/okhttp/internal/http/ag;
if-eqz v0, :cond_8b
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
check-cast v0, Lcom/squareup/okhttp/internal/http/ag;
invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/http/al;->a(Lcom/squareup/okhttp/internal/http/ag;)V
:cond_8b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/al;->a()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/al;->b()Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
invoke-virtual {v1}, Lcom/squareup/okhttp/g;->k()Lcom/squareup/okhttp/i;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/i;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
sget-object v1, Lcom/squareup/okhttp/internal/http/t;->b:Ljava/lang/String;
iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/p;->b:J
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
sget-object v1, Lcom/squareup/okhttp/internal/http/t;->c:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/ResponseSource;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->d:Lcom/squareup/okhttp/g;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/z;->e()I
move-result v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/g;->a(I)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/internal/http/e;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->m:Lcom/squareup/okhttp/ResponseSource;
sget-object v1, Lcom/squareup/okhttp/ResponseSource;->b:Lcom/squareup/okhttp/ResponseSource;
if-ne v0, v1, :cond_13b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/z;->a(Lcom/squareup/okhttp/internal/http/z;)Z
move-result v0
if-eqz v0, :cond_132
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/al;->e()V
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/p;->l()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/z;)Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->g()Lcom/squareup/okhttp/n;
move-result-object v0
invoke-interface {v0}, Lcom/squareup/okhttp/n;->a()V
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/p;->q()Lcom/squareup/okhttp/internal/http/z;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/n;->a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/z;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/aa;->b()Lcom/squareup/okhttp/internal/a/p;
move-result-object v0
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/internal/a/p;)V
goto/16 :goto_6
:cond_12b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->k:Lcom/squareup/okhttp/internal/a/o;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/o;->close()V
goto/16 :goto_7c
:cond_132
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->r:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
:cond_13b
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/p;->o()Z
move-result v0
if-nez v0, :cond_151
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->s:Ljava/net/CacheRequest;
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/http/al;->a(Ljava/net/CacheRequest;)Lcom/squareup/okhttp/internal/a/p;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->o:Lcom/squareup/okhttp/internal/a/p;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->o:Lcom/squareup/okhttp/internal/a/p;
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->p:Lcom/squareup/okhttp/internal/a/p;
goto/16 :goto_6
:cond_151
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->a:Lcom/squareup/okhttp/m;
invoke-virtual {v0}, Lcom/squareup/okhttp/m;->g()Lcom/squareup/okhttp/n;
move-result-object v0
if-eqz v0, :cond_168
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->n:Lcom/squareup/okhttp/internal/http/z;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/http/a;->a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/u;)Z
move-result v1
if-nez v1, :cond_175
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->j:Lcom/squareup/okhttp/internal/http/u;
invoke-interface {v0, v1}, Lcom/squareup/okhttp/n;->b(Lcom/squareup/okhttp/internal/http/u;)Z
:cond_168
:goto_168
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->g:Lcom/squareup/okhttp/internal/http/al;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/p;->s:Ljava/net/CacheRequest;
invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/http/al;->a(Ljava/net/CacheRequest;)Lcom/squareup/okhttp/internal/a/p;
move-result-object v0
invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/internal/a/p;)V
goto/16 :goto_6
:cond_175
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/p;->q()Lcom/squareup/okhttp/internal/http/z;
move-result-object v1
invoke-interface {v0, v1}, Lcom/squareup/okhttp/n;->a(Lcom/squareup/okhttp/internal/http/z;)Ljava/net/CacheRequest;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/p;->s:Ljava/net/CacheRequest;
goto :goto_168
.end method
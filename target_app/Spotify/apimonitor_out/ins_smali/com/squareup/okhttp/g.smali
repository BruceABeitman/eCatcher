.class public final Lcom/squareup/okhttp/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Closeable;
.field private final a:Lcom/squareup/okhttp/h;
.field private final b:Lcom/squareup/okhttp/p;
.field private c:Ljava/net/Socket;
.field private d:Ljava/io/InputStream;
.field private e:Ljava/io/OutputStream;
.field private f:Lcom/squareup/okhttp/internal/a/c;
.field private g:Lcom/squareup/okhttp/internal/a/b;
.field private h:Z
.field private i:Lcom/squareup/okhttp/internal/http/h;
.field private j:Lcom/squareup/okhttp/internal/spdy/u;
.field private k:I
.field private l:J
.field private m:Lcom/squareup/okhttp/i;
.field private n:I
.field private o:Ljava/lang/Object;
.method public constructor <init>(Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/p;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/squareup/okhttp/g;->h:Z
const/4 v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/g;->k:I
iput-object p1, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
iput-object p2, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
return-void
.end method
.method private a(Lcom/squareup/okhttp/r;)V
.registers 10
iget-object v0, p0, Lcom/squareup/okhttp/g;->d:Ljava/io/InputStream;
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/a/p;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;
move-result-object v1
iget-object v0, p0, Lcom/squareup/okhttp/g;->e:Ljava/io/OutputStream;
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/OutputStream;)Lcom/squareup/okhttp/internal/a/o;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
new-instance v2, Lcom/squareup/okhttp/internal/http/h;
iget-object v3, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
invoke-direct {v2, v3, p0, v1, v0}, Lcom/squareup/okhttp/internal/http/h;-><init>(Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/a/c;Lcom/squareup/okhttp/internal/a/b;)V
new-instance v0, Lcom/squareup/okhttp/internal/http/w;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/w;-><init>()V
new-instance v3, Ljava/net/URL;
const-string v4, "https"
iget-object v5, p1, Lcom/squareup/okhttp/r;->a:Ljava/lang/String;
iget v6, p1, Lcom/squareup/okhttp/r;->b:I
const-string v7, "/"
invoke-direct {v3, v4, v5, v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/net/URL;)Lcom/squareup/okhttp/internal/http/w;
move-result-object v3
const-string v4, "Host"
iget v0, p1, Lcom/squareup/okhttp/r;->b:I
const-string v5, "https"
invoke-static {v5}, Lcom/squareup/okhttp/internal/o;->a(Ljava/lang/String;)I
move-result v5
if-ne v0, v5, :cond_bb
iget-object v0, p1, Lcom/squareup/okhttp/r;->a:Ljava/lang/String;
:goto_3f
invoke-virtual {v3, v4, v0}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
const-string v0, "User-Agent"
iget-object v4, p1, Lcom/squareup/okhttp/r;->c:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
iget-object v0, p1, Lcom/squareup/okhttp/r;->d:Ljava/lang/String;
if-eqz v0, :cond_54
const-string v0, "Proxy-Authorization"
iget-object v4, p1, Lcom/squareup/okhttp/r;->d:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
:cond_54
const-string v0, "Proxy-Connection"
const-string v4, "Keep-Alive"
invoke-virtual {v3, v0, v4}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/w;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "CONNECT "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p1, Lcom/squareup/okhttp/r;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p1, Lcom/squareup/okhttp/r;->b:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " HTTP/1.1"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:cond_82
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->e()Lcom/squareup/okhttp/internal/http/e;
move-result-object v4
invoke-virtual {v2, v4, v3}, Lcom/squareup/okhttp/internal/http/h;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/h;->d()V
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/h;->e()Lcom/squareup/okhttp/internal/http/ab;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/ab;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;
move-result-object v0
invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/h;->g()V
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v4
sparse-switch v4, :sswitch_data_108
new-instance v1, Ljava/io/IOException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unexpected response code for CONNECT: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_bb
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p1, Lcom/squareup/okhttp/r;->a:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ":"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v5, p1, Lcom/squareup/okhttp/r;->b:I
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_3f
:sswitch_d8
invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_106
new-instance v0, Ljava/io/IOException;
const-string v1, "TLS tunnel buffered too many bytes!"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_ee
iget-object v4, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v4, v4, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v4, v4, Lcom/squareup/okhttp/a;->f:Lcom/squareup/okhttp/j;
iget-object v5, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v5, v5, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;
invoke-static {v4, v0, v5}, Lcom/squareup/okhttp/internal/http/g;->a(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/internal/http/z;Ljava/net/Proxy;)Lcom/squareup/okhttp/internal/http/u;
move-result-object v0
if-nez v0, :cond_82
new-instance v0, Ljava/io/IOException;
const-string v1, "Failed to authenticate with proxy"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_106
return-void
nop
:sswitch_data_108
.sparse-switch
0xc8 -> :sswitch_d8
0x197 -> :sswitch_ee
.end sparse-switch
.end method
.method private p()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->d:Ljava/io/InputStream;
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/a/p;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/g;->f:Lcom/squareup/okhttp/internal/a/c;
iget-object v0, p0, Lcom/squareup/okhttp/g;->e:Ljava/io/OutputStream;
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/OutputStream;)Lcom/squareup/okhttp/internal/a/o;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/g;->g:Lcom/squareup/okhttp/internal/a/b;
return-void
.end method
.method public final a()Ljava/lang/Object;
.registers 3
iget-object v1, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/squareup/okhttp/g;->o:Ljava/lang/Object;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/squareup/okhttp/internal/http/p;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
if-eqz v0, :cond_c
new-instance v0, Lcom/squareup/okhttp/internal/http/ai;
iget-object v1, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/ai;-><init>(Lcom/squareup/okhttp/internal/http/p;Lcom/squareup/okhttp/internal/spdy/u;)V
:goto_b
return-object v0
:cond_c
new-instance v0, Lcom/squareup/okhttp/internal/http/r;
iget-object v1, p0, Lcom/squareup/okhttp/g;->i:Lcom/squareup/okhttp/internal/http/h;
invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/r;-><init>(Lcom/squareup/okhttp/internal/http/p;Lcom/squareup/okhttp/internal/http/h;)V
goto :goto_b
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/squareup/okhttp/g;->k:I
return-void
.end method
.method public final a(IILcom/squareup/okhttp/r;)V
.registers 12
const/4 v4, 0x0
const/4 v3, 0x1
iget-boolean v0, p0, Lcom/squareup/okhttp/g;->h:Z
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "already connected"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v0, v0, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;
invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v0
sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
if-eq v0, v1, :cond_11a
new-instance v0, Ljava/net/Socket;
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;
invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
:goto_23
iput-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
iget-object v2, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v2, v2, Lcom/squareup/okhttp/p;->c:Ljava/net/InetSocketAddress;
invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/internal/k;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/g;->d:Ljava/io/InputStream;
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/g;->e:Ljava/io/OutputStream;
iget-object v0, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v0, v0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v0, v0, Lcom/squareup/okhttp/a;->d:Ljavax/net/ssl/SSLSocketFactory;
if-eqz v0, :cond_1a2
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
move-result-object v5
iget-object v0, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v0, v0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v0, v0, Lcom/squareup/okhttp/a;->d:Ljavax/net/ssl/SSLSocketFactory;
if-eqz v0, :cond_121
iget-object v0, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v0, v0, Lcom/squareup/okhttp/p;->b:Ljava/net/Proxy;
invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v0
sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
if-ne v0, v1, :cond_121
move v0, v3
:goto_68
if-eqz v0, :cond_6d
invoke-direct {p0, p3}, Lcom/squareup/okhttp/g;->a(Lcom/squareup/okhttp/r;)V
:cond_6d
iget-object v0, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v0, v0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v0, v0, Lcom/squareup/okhttp/a;->d:Ljavax/net/ssl/SSLSocketFactory;
iget-object v1, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
iget-object v2, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v2, v2, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v2, v2, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;
iget-object v6, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v6, v6, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget v6, v6, Lcom/squareup/okhttp/a;->c:I
invoke-virtual {v0, v1, v2, v6, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
check-cast v0, Ljavax/net/ssl/SSLSocket;
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-boolean v1, v1, Lcom/squareup/okhttp/p;->d:Z
if-eqz v1, :cond_124
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v1, v1, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;
invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/internal/k;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
:goto_9a
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-boolean v1, v1, Lcom/squareup/okhttp/p;->d:Z
if-eqz v1, :cond_129
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v1, v1, Lcom/squareup/okhttp/a;->g:Ljava/util/List;
sget-object v2, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_bc
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v1, v1, Lcom/squareup/okhttp/a;->g:Ljava/util/List;
sget-object v2, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_129
:cond_bc
move v2, v3
:goto_bd
if-eqz v2, :cond_e0
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v1, v1, Lcom/squareup/okhttp/a;->g:Ljava/util/List;
sget-object v6, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12b
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v1, v1, Lcom/squareup/okhttp/a;->g:Ljava/util/List;
sget-object v6, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;
invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12b
sget-object v1, Lcom/squareup/okhttp/internal/o;->f:Ljava/util/List;
invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/internal/k;->a(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
:goto_e0
:cond_e0
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v1, v1, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/HostnameVerifier;
iget-object v6, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v6, v6, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v6, v6, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;
move-result-object v7
invoke-interface {v1, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
move-result v1
if-nez v1, :cond_145
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Hostname \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v2, v2, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v2, v2, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' was not verified"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11a
new-instance v0, Ljava/net/Socket;
invoke-direct {v0}, Ljava/net/Socket;-><init>()V
goto/16 :goto_23
:cond_121
move v0, v4
goto/16 :goto_68
:cond_124
invoke-static {v0}, Lcom/squareup/okhttp/internal/k;->a(Ljavax/net/ssl/SSLSocket;)V
goto/16 :goto_9a
:cond_129
move v2, v4
goto :goto_bd
:cond_12b
iget-object v1, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v1, v1, Lcom/squareup/okhttp/a;->g:Ljava/util/List;
sget-object v6, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_13f
sget-object v1, Lcom/squareup/okhttp/internal/o;->h:Ljava/util/List;
invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/internal/k;->a(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
goto :goto_e0
:cond_13f
sget-object v1, Lcom/squareup/okhttp/internal/o;->g:Ljava/util/List;
invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/internal/k;->a(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
goto :goto_e0
:cond_145
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/g;->e:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/g;->d:Ljava/io/InputStream;
invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;
move-result-object v1
invoke-static {v1}, Lcom/squareup/okhttp/i;->a(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/i;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/g;->m:Lcom/squareup/okhttp/i;
invoke-direct {p0}, Lcom/squareup/okhttp/g;->p()V
sget-object v1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
if-eqz v2, :cond_16c
invoke-virtual {v5, v0}, Lcom/squareup/okhttp/internal/k;->b(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/internal/a/d;
move-result-object v2
if-eqz v2, :cond_16c
invoke-static {v2}, Lcom/squareup/okhttp/internal/o;->a(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/Protocol;
move-result-object v1
:cond_16c
iget-boolean v2, v1, Lcom/squareup/okhttp/Protocol;->spdyVariant:Z
if-eqz v2, :cond_194
invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
new-instance v0, Lcom/squareup/okhttp/internal/spdy/v;
iget-object v2, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
iget-object v2, v2, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
iget-object v2, v2, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;
iget-object v4, p0, Lcom/squareup/okhttp/g;->f:Lcom/squareup/okhttp/internal/a/c;
iget-object v5, p0, Lcom/squareup/okhttp/g;->g:Lcom/squareup/okhttp/internal/a/b;
invoke-direct {v0, v2, v4, v5}, Lcom/squareup/okhttp/internal/spdy/v;-><init>(Ljava/lang/String;Lcom/squareup/okhttp/internal/a/c;Lcom/squareup/okhttp/internal/a/b;)V
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/v;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/v;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/v;->a()Lcom/squareup/okhttp/internal/spdy/u;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/u;->e()V
:goto_191
iput-boolean v3, p0, Lcom/squareup/okhttp/g;->h:Z
return-void
:cond_194
new-instance v0, Lcom/squareup/okhttp/internal/http/h;
iget-object v1, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
iget-object v2, p0, Lcom/squareup/okhttp/g;->f:Lcom/squareup/okhttp/internal/a/c;
iget-object v4, p0, Lcom/squareup/okhttp/g;->g:Lcom/squareup/okhttp/internal/a/b;
invoke-direct {v0, v1, p0, v2, v4}, Lcom/squareup/okhttp/internal/http/h;-><init>(Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/a/c;Lcom/squareup/okhttp/internal/a/b;)V
iput-object v0, p0, Lcom/squareup/okhttp/g;->i:Lcom/squareup/okhttp/internal/http/h;
goto :goto_191
:cond_1a2
invoke-direct {p0}, Lcom/squareup/okhttp/g;->p()V
new-instance v0, Lcom/squareup/okhttp/internal/http/h;
iget-object v1, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
iget-object v2, p0, Lcom/squareup/okhttp/g;->f:Lcom/squareup/okhttp/internal/a/c;
iget-object v4, p0, Lcom/squareup/okhttp/g;->g:Lcom/squareup/okhttp/internal/a/b;
invoke-direct {v0, v1, p0, v2, v4}, Lcom/squareup/okhttp/internal/http/h;-><init>(Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/internal/a/c;Lcom/squareup/okhttp/internal/a/b;)V
iput-object v0, p0, Lcom/squareup/okhttp/g;->i:Lcom/squareup/okhttp/internal/http/h;
goto :goto_191
.end method
.method public final a(Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Lcom/squareup/okhttp/g;->l()Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v1, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
monitor-enter v1
:try_start_a
iget-object v0, p0, Lcom/squareup/okhttp/g;->o:Ljava/lang/Object;
if-eqz v0, :cond_19
new-instance v0, Ljava/lang/IllegalStateException;
const-string v2, "Connection already has an owner!"
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_16
:try_end_16
.catchall {:try_start_a .. :try_end_16} :catchall_16
move-exception v0
monitor-exit v1
throw v0
:cond_19
:try_start_19
iput-object p1, p0, Lcom/squareup/okhttp/g;->o:Ljava/lang/Object;
monitor-exit v1
:try_end_1c
.catchall {:try_start_19 .. :try_end_1c} :catchall_16
goto :goto_6
.end method
.method public final a(J)Z
.registers 7
invoke-virtual {p0}, Lcom/squareup/okhttp/g;->j()J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v2
sub-long/2addr v2, p1
cmp-long v0, v0, v2
if-gez v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public final b(I)V
.registers 4
iget-boolean v0, p0, Lcom/squareup/okhttp/g;->h:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "updateReadTimeout - not connected"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
return-void
.end method
.method public final b(Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0}, Lcom/squareup/okhttp/g;->l()Z
move-result v0
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_c
iget-object v1, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
monitor-enter v1
:try_start_f
iget-object v0, p0, Lcom/squareup/okhttp/g;->o:Ljava/lang/Object;
if-eq v0, p1, :cond_15
monitor-exit v1
:goto_14
return-void
:cond_15
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/okhttp/g;->o:Ljava/lang/Object;
monitor-exit v1
:try_end_19
.catchall {:try_start_f .. :try_end_19} :catchall_1f
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
goto :goto_14
:catchall_1f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()Z
.registers 3
iget-object v1, p0, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/h;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/squareup/okhttp/g;->o:Ljava/lang/Object;
if-nez v0, :cond_a
const/4 v0, 0x0
monitor-exit v1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/okhttp/g;->o:Ljava/lang/Object;
const/4 v0, 0x1
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_10
goto :goto_9
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/g;->h:Z
return v0
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
return-void
.end method
.method public final d()Lcom/squareup/okhttp/p;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->b:Lcom/squareup/okhttp/p;
return-object v0
.end method
.method public final e()Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
return-object v0
.end method
.method public final f()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public final g()Z
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
iget-object v2, p0, Lcom/squareup/okhttp/g;->f:Lcom/squareup/okhttp/internal/a/c;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
invoke-virtual {p0}, Lcom/squareup/okhttp/g;->l()Z
move-result v2
if-nez v2, :cond_6
:try_start_d
iget-object v2, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
:try_end_12
.catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_12} :catch_2e
.catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_37
move-result v3
:try_start_13
iget-object v2, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V
iget-object v2, p0, Lcom/squareup/okhttp/g;->f:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->f()Z
:try_end_1e
.catchall {:try_start_13 .. :try_end_1e} :catchall_30
move-result v2
if-eqz v2, :cond_28
:try_start_21
iget-object v2, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V
move v0, v1
goto :goto_6
:cond_28
iget-object v2, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V
goto :goto_6
:catch_2e
move-exception v1
goto :goto_6
:catchall_30
move-exception v2
iget-object v4, p0, Lcom/squareup/okhttp/g;->c:Ljava/net/Socket;
invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V
throw v2
:try_end_37
.catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_37} :catch_2e
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_37} :catch_37
:catch_37
move-exception v0
move v0, v1
goto :goto_6
.end method
.method public final h()V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "spdyConnection != null"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/squareup/okhttp/g;->l:J
return-void
.end method
.method public final i()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/u;->b()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final j()J
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
if-nez v0, :cond_7
iget-wide v0, p0, Lcom/squareup/okhttp/g;->l:J
:goto_6
return-wide v0
:cond_7
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/u;->c()J
move-result-wide v0
goto :goto_6
.end method
.method public final k()Lcom/squareup/okhttp/i;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->m:Lcom/squareup/okhttp/i;
return-object v0
.end method
.method public final l()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/g;->j:Lcom/squareup/okhttp/internal/spdy/u;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final m()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/g;->k:I
return v0
.end method
.method public final n()V
.registers 2
iget v0, p0, Lcom/squareup/okhttp/g;->n:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/squareup/okhttp/g;->n:I
return-void
.end method
.method public final o()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/g;->n:I
return v0
.end method
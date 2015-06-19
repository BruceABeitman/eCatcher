.class public final Lcom/squareup/okhttp/internal/http/ah;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/squareup/okhttp/a;
.field private final b:Ljava/net/URI;
.field private final c:Ljava/net/ProxySelector;
.field private final d:Lcom/squareup/okhttp/h;
.field private final e:Lcom/squareup/okhttp/internal/i;
.field private final f:Lcom/squareup/okhttp/q;
.field private g:Ljava/net/Proxy;
.field private h:Ljava/net/InetSocketAddress;
.field private i:Z
.field private j:Ljava/net/Proxy;
.field private k:Ljava/util/Iterator;
.field private l:[Ljava/net/InetAddress;
.field private m:I
.field private n:I
.field private o:I
.field private final p:Ljava/util/List;
.method public constructor <init>(Lcom/squareup/okhttp/a;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/internal/i;Lcom/squareup/okhttp/q;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/squareup/okhttp/internal/http/ah;->o:I
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ah;->a:Lcom/squareup/okhttp/a;
iput-object p2, p0, Lcom/squareup/okhttp/internal/http/ah;->b:Ljava/net/URI;
iput-object p3, p0, Lcom/squareup/okhttp/internal/http/ah;->c:Ljava/net/ProxySelector;
iput-object p4, p0, Lcom/squareup/okhttp/internal/http/ah;->d:Lcom/squareup/okhttp/h;
iput-object p5, p0, Lcom/squareup/okhttp/internal/http/ah;->e:Lcom/squareup/okhttp/internal/i;
iput-object p6, p0, Lcom/squareup/okhttp/internal/http/ah;->f:Lcom/squareup/okhttp/q;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->p:Ljava/util/List;
invoke-virtual {p1}, Lcom/squareup/okhttp/a;->b()Ljava/net/Proxy;
move-result-object v0
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/ah;->i:Z
if-eqz v0, :cond_25
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->j:Ljava/net/Proxy;
:goto_24
:cond_24
return-void
:cond_25
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->c:Ljava/net/ProxySelector;
invoke-virtual {v0, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_24
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->k:Ljava/util/Iterator;
goto :goto_24
.end method
.method private b()Ljava/net/Proxy;
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->j:Ljava/net/Proxy;
if-eqz v0, :cond_a
iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/ah;->i:Z
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->j:Ljava/net/Proxy;
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->k:Ljava/util/Iterator;
if-eqz v0, :cond_27
:cond_e
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->k:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->k:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/net/Proxy;
invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v1
sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
if-eq v1, v2, :cond_e
goto :goto_9
:cond_27
iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/ah;->i:Z
sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
goto :goto_9
.end method
.method private c()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->l:[Ljava/net/InetAddress;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private d()Z
.registers 3
iget v0, p0, Lcom/squareup/okhttp/internal/http/ah;->o:I
const/4 v1, -0x1
if-eq v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method private e()I
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
iget v2, p0, Lcom/squareup/okhttp/internal/http/ah;->o:I
if-ne v2, v0, :cond_9
iput v1, p0, Lcom/squareup/okhttp/internal/http/ah;->o:I
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/squareup/okhttp/internal/http/ah;->o:I
if-nez v0, :cond_12
const/4 v0, -0x1
iput v0, p0, Lcom/squareup/okhttp/internal/http/ah;->o:I
move v0, v1
goto :goto_8
:cond_12
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method
.method private f()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->p:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final a(Ljava/lang/String;)Lcom/squareup/okhttp/g;
.registers 10
const/4 v7, 0x0
const/4 v2, 0x1
const/4 v3, 0x0
:goto_3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->d:Lcom/squareup/okhttp/h;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ah;->a:Lcom/squareup/okhttp/a;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/h;->a(Lcom/squareup/okhttp/a;)Lcom/squareup/okhttp/g;
move-result-object v0
if-eqz v0, :cond_20
const-string v1, "GET"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1b
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->g()Z
move-result v1
if-eqz v1, :cond_1c
:cond_1b
:goto_1b
return-object v0
:cond_1c
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->close()V
goto :goto_3
:cond_20
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->d()Z
move-result v0
if-nez v0, :cond_a0
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->c()Z
move-result v0
if-nez v0, :cond_77
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ah;->i:Z
if-nez v0, :cond_4d
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->f()Z
move-result v0
if-nez v0, :cond_3c
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_3c
new-instance v1, Lcom/squareup/okhttp/g;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ah;->d:Lcom/squareup/okhttp/h;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->p:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/p;
invoke-direct {v1, v2, v0}, Lcom/squareup/okhttp/g;-><init>(Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/p;)V
move-object v0, v1
goto :goto_1b
:cond_4d
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->b()Ljava/net/Proxy;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->g:Ljava/net/Proxy;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->g:Ljava/net/Proxy;
iput-object v7, p0, Lcom/squareup/okhttp/internal/http/ah;->l:[Ljava/net/InetAddress;
invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v1
sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
if-ne v1, v4, :cond_c1
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->b:Ljava/net/URI;
invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ah;->b:Ljava/net/URI;
invoke-static {v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/net/URI;)I
move-result v1
iput v1, p0, Lcom/squareup/okhttp/internal/http/ah;->n:I
:goto_6d
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ah;->e:Lcom/squareup/okhttp/internal/i;
invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/i;->a(Ljava/lang/String;)[Ljava/net/InetAddress;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->l:[Ljava/net/InetAddress;
iput v3, p0, Lcom/squareup/okhttp/internal/http/ah;->m:I
:cond_77
new-instance v0, Ljava/net/InetSocketAddress;
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ah;->l:[Ljava/net/InetAddress;
iget v4, p0, Lcom/squareup/okhttp/internal/http/ah;->m:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lcom/squareup/okhttp/internal/http/ah;->m:I
aget-object v1, v1, v4
iget v4, p0, Lcom/squareup/okhttp/internal/http/ah;->n:I
invoke-direct {v0, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
iget v1, p0, Lcom/squareup/okhttp/internal/http/ah;->m:I
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ah;->l:[Ljava/net/InetAddress;
array-length v4, v4
if-ne v1, v4, :cond_93
iput-object v7, p0, Lcom/squareup/okhttp/internal/http/ah;->l:[Ljava/net/InetAddress;
iput v3, p0, Lcom/squareup/okhttp/internal/http/ah;->m:I
:cond_93
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->h:Ljava/net/InetSocketAddress;
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->a:Lcom/squareup/okhttp/a;
invoke-virtual {v0}, Lcom/squareup/okhttp/a;->a()Ljavax/net/ssl/SSLSocketFactory;
move-result-object v0
if-eqz v0, :cond_f1
move v0, v2
:goto_9e
iput v0, p0, Lcom/squareup/okhttp/internal/http/ah;->o:I
:cond_a0
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->e()I
move-result v0
if-ne v0, v2, :cond_f3
move v0, v2
:goto_a7
new-instance v1, Lcom/squareup/okhttp/p;
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ah;->a:Lcom/squareup/okhttp/a;
iget-object v5, p0, Lcom/squareup/okhttp/internal/http/ah;->g:Ljava/net/Proxy;
iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ah;->h:Ljava/net/InetSocketAddress;
invoke-direct {v1, v4, v5, v6, v0}, Lcom/squareup/okhttp/p;-><init>(Lcom/squareup/okhttp/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->f:Lcom/squareup/okhttp/q;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/q;->c(Lcom/squareup/okhttp/p;)Z
move-result v0
if-eqz v0, :cond_f5
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->p:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_3
:cond_c1
invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;
move-result-object v0
instance-of v1, v0, Ljava/net/InetSocketAddress;
if-nez v1, :cond_e2
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Proxy.address() is not an InetSocketAddress: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_e2
check-cast v0, Ljava/net/InetSocketAddress;
invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
move-result v0
iput v0, p0, Lcom/squareup/okhttp/internal/http/ah;->n:I
move-object v0, v1
goto/16 :goto_6d
:cond_f1
move v0, v3
goto :goto_9e
:cond_f3
move v0, v3
goto :goto_a7
:cond_f5
new-instance v0, Lcom/squareup/okhttp/g;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ah;->d:Lcom/squareup/okhttp/h;
invoke-direct {v0, v2, v1}, Lcom/squareup/okhttp/g;-><init>(Lcom/squareup/okhttp/h;Lcom/squareup/okhttp/p;)V
goto/16 :goto_1b
.end method
.method public final a(Lcom/squareup/okhttp/g;Ljava/io/IOException;)V
.registers 8
const/4 v0, 0x1
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->o()I
move-result v1
if-lez v1, :cond_8
:goto_7
:cond_7
return-void
:cond_8
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->d()Lcom/squareup/okhttp/p;
move-result-object v1
invoke-virtual {v1}, Lcom/squareup/okhttp/p;->a()Ljava/net/Proxy;
move-result-object v2
invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;
move-result-object v2
sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
if-eq v2, v3, :cond_2b
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ah;->c:Ljava/net/ProxySelector;
if-eqz v2, :cond_2b
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ah;->c:Ljava/net/ProxySelector;
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/ah;->b:Ljava/net/URI;
invoke-virtual {v1}, Lcom/squareup/okhttp/p;->a()Ljava/net/Proxy;
move-result-object v4
invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;
move-result-object v4
invoke-virtual {v2, v3, v4, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
:cond_2b
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ah;->f:Lcom/squareup/okhttp/q;
invoke-virtual {v2, v1}, Lcom/squareup/okhttp/q;->a(Lcom/squareup/okhttp/p;)V
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->d()Z
move-result v1
if-eqz v1, :cond_7
instance-of v1, p2, Ljavax/net/ssl/SSLHandshakeException;
if-nez v1, :cond_7
instance-of v1, p2, Ljavax/net/ssl/SSLProtocolException;
if-nez v1, :cond_7
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->e()I
move-result v1
if-ne v1, v0, :cond_55
:goto_44
new-instance v1, Lcom/squareup/okhttp/p;
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ah;->a:Lcom/squareup/okhttp/a;
iget-object v3, p0, Lcom/squareup/okhttp/internal/http/ah;->g:Ljava/net/Proxy;
iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ah;->h:Ljava/net/InetSocketAddress;
invoke-direct {v1, v2, v3, v4, v0}, Lcom/squareup/okhttp/p;-><init>(Lcom/squareup/okhttp/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ah;->f:Lcom/squareup/okhttp/q;
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/q;->a(Lcom/squareup/okhttp/p;)V
goto :goto_7
:cond_55
const/4 v0, 0x0
goto :goto_44
.end method
.method public final a()Z
.registers 2
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->d()Z
move-result v0
if-nez v0, :cond_16
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->c()Z
move-result v0
if-nez v0, :cond_16
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ah;->i:Z
if-nez v0, :cond_16
invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ah;->f()Z
move-result v0
if-eqz v0, :cond_18
:cond_16
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
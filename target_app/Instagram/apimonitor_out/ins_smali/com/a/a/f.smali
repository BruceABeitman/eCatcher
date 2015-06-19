.class public final Lcom/a/a/f;
.super Ljava/lang/Object;
.source "WebSocketClient.java"
.field private a:Ljava/net/URI;
.field private b:Lcom/a/a/k;
.field private c:Ljava/net/Socket;
.field private d:Ljava/lang/Thread;
.field private e:Landroid/os/Handler;
.field private f:Ljava/util/List;
.field private g:Lcom/a/a/b;
.field private h:Ljava/lang/Object;
.field private i:Lcom/a/a/e;
.method public constructor <init>(Ljava/net/URI;Ljava/util/List;Lcom/a/a/e;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/a/a/f;->a:Ljava/net/URI;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/a/a/f;->h:Ljava/lang/Object;
new-instance v0, Lcom/a/a/k;
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
invoke-direct {v0, p0, v1}, Lcom/a/a/k;-><init>(Lcom/a/a/f;Landroid/os/Handler;)V
iput-object v0, p0, Lcom/a/a/f;->b:Lcom/a/a/k;
iput-object p2, p0, Lcom/a/a/f;->f:Ljava/util/List;
new-instance v0, Lcom/a/a/b;
iget-object v1, p0, Lcom/a/a/f;->b:Lcom/a/a/k;
invoke-direct {v0, p0, v1}, Lcom/a/a/b;-><init>(Lcom/a/a/f;Lcom/a/a/j;)V
iput-object v0, p0, Lcom/a/a/f;->g:Lcom/a/a/b;
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "websocket-write-thread"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v1, Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v1, p0, Lcom/a/a/f;->e:Landroid/os/Handler;
if-nez p3, :cond_3f
new-instance p3, Lcom/a/a/a;
invoke-direct {p3}, Lcom/a/a/a;-><init>()V
:cond_3f
iput-object p3, p0, Lcom/a/a/f;->i:Lcom/a/a/e;
return-void
.end method
.method static synthetic a(Lcom/a/a/f;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/a/a/f;->h:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic a(Lcom/a/a/c;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/a/a/f;->b(Lcom/a/a/c;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/a/a/f;Ljava/net/Socket;)Ljava/net/Socket;
.registers 2
iput-object p1, p0, Lcom/a/a/f;->c:Ljava/net/Socket;
return-object p1
.end method
.method private static b(Lcom/a/a/c;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
const/4 v4, -0x1
invoke-virtual {p0}, Lcom/a/a/c;->read()I
move-result v1
if-ne v1, v4, :cond_9
:goto_8
return-object v0
:cond_9
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, ""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
:cond_10
const/16 v3, 0xa
if-eq v1, v3, :cond_23
const/16 v3, 0xd
if-eq v1, v3, :cond_1c
int-to-char v1, v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1c
invoke-virtual {p0}, Lcom/a/a/c;->read()I
move-result v1
if-ne v1, v4, :cond_10
goto :goto_8
:cond_23
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method static synthetic b(Lcom/a/a/f;)Ljava/net/URI;
.registers 2
iget-object v0, p0, Lcom/a/a/f;->a:Ljava/net/URI;
return-object v0
.end method
.method static synthetic b(Ljava/lang/String;)Lorg/apache/http/StatusLine;
.registers 2
invoke-static {p0}, Lcom/a/a/f;->e(Ljava/lang/String;)Lorg/apache/http/StatusLine;
move-result-object v0
return-object v0
.end method
.method static synthetic c(Lcom/a/a/f;)Lcom/a/a/e;
.registers 2
iget-object v0, p0, Lcom/a/a/f;->i:Lcom/a/a/e;
return-object v0
.end method
.method static synthetic c(Ljava/lang/String;)Lorg/apache/http/Header;
.registers 2
invoke-static {p0}, Lcom/a/a/f;->f(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v0
return-object v0
.end method
.method static synthetic d()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/a/a/f;->e()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/a/a/f;->g(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/a/a/f;)Ljava/net/Socket;
.registers 2
iget-object v0, p0, Lcom/a/a/f;->c:Ljava/net/Socket;
return-object v0
.end method
.method private static e()Ljava/lang/String;
.registers 8
const/16 v7, 0x10
const/4 v1, 0x0
new-array v2, v7, [B
move v0, v1
:goto_6
if-ge v0, v7, :cond_16
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v3
const-wide/high16 v5, 0x4070
mul-double/2addr v3, v5
double-to-int v3, v3
int-to-byte v3, v3
aput-byte v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_16
invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic e(Lcom/a/a/f;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/a/a/f;->f:Ljava/util/List;
return-object v0
.end method
.method private static e(Ljava/lang/String;)Lorg/apache/http/StatusLine;
.registers 2
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v0, Lorg/apache/http/message/BasicLineParser;
invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V
invoke-static {p0, v0}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;
move-result-object v0
goto :goto_7
.end method
.method static synthetic f(Lcom/a/a/f;)Lcom/a/a/k;
.registers 2
iget-object v0, p0, Lcom/a/a/f;->b:Lcom/a/a/k;
return-object v0
.end method
.method private static f(Ljava/lang/String;)Lorg/apache/http/Header;
.registers 2
new-instance v0, Lorg/apache/http/message/BasicLineParser;
invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V
invoke-static {p0, v0}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;
move-result-object v0
return-object v0
.end method
.method static synthetic g(Lcom/a/a/f;)Lcom/a/a/b;
.registers 2
iget-object v0, p0, Lcom/a/a/f;->g:Lcom/a/a/b;
return-object v0
.end method
.method private static g(Ljava/lang/String;)Ljava/lang/String;
.registers 4
:try_start_0
const-string v0, "SHA-1"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
:try_end_2c
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2c} :catch_2e
move-result-object v0
return-object v0
:catch_2e
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/a/a/f;->b:Lcom/a/a/k;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/a/a/k;->a(Lcom/a/a/j;)V
return-void
.end method
.method public final a(Lcom/a/a/j;)V
.registers 3
iget-object v0, p0, Lcom/a/a/f;->b:Lcom/a/a/k;
invoke-virtual {v0, p1}, Lcom/a/a/k;->a(Lcom/a/a/j;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/a/a/f;->g:Lcom/a/a/b;
invoke-virtual {v0, p1}, Lcom/a/a/b;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p0, v0}, Lcom/a/a/f;->a([B)V
return-void
.end method
.method final a([B)V
.registers 4
iget-object v0, p0, Lcom/a/a/f;->e:Landroid/os/Handler;
new-instance v1, Lcom/a/a/i;
invoke-direct {v1, p0, p1}, Lcom/a/a/i;-><init>(Lcom/a/a/f;[B)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/a/a/f;->d:Ljava/lang/Thread;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/a/a/f;->d:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/a/a/g;
invoke-direct {v1, p0}, Lcom/a/a/g;-><init>(Lcom/a/a/f;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lcom/a/a/f;->d:Ljava/lang/Thread;
iget-object v0, p0, Lcom/a/a/f;->d:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
goto :goto_c
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/a/a/f;->e:Landroid/os/Handler;
new-instance v1, Lcom/a/a/h;
invoke-direct {v1, p0}, Lcom/a/a/h;-><init>(Lcom/a/a/f;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
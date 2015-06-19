.class final Lcom/squareup/okhttp/internal/l;
.super Lcom/squareup/okhttp/internal/k;
.source "SourceFile"
.field protected final a:Ljava/lang/Class;
.field private final b:Ljava/lang/reflect/Method;
.field private final c:Ljava/lang/reflect/Method;
.field private final d:Ljava/lang/reflect/Method;
.field private final e:Ljava/lang/reflect/Method;
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.registers 6
invoke-direct {p0}, Lcom/squareup/okhttp/internal/k;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/internal/l;->a:Ljava/lang/Class;
iput-object p2, p0, Lcom/squareup/okhttp/internal/l;->b:Ljava/lang/reflect/Method;
iput-object p3, p0, Lcom/squareup/okhttp/internal/l;->c:Ljava/lang/reflect/Method;
iput-object p4, p0, Lcom/squareup/okhttp/internal/l;->d:Ljava/lang/reflect/Method;
iput-object p5, p0, Lcom/squareup/okhttp/internal/l;->e:Ljava/lang/reflect/Method;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;B)V
.registers 7
invoke-direct/range {p0 .. p5}, Lcom/squareup/okhttp/internal/l;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
return-void
.end method
.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
.registers 7
:try_start_0
invoke-static {p1, p2, p3}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
:try_end_3
.catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
new-instance v1, Ljava/io/IOException;
const-string v2, "Exception in connect"
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
throw v1
.end method
.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/k;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->a:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
:try_start_c
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->b:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->c:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_27
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_27} :catch_28
.catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_27} :catch_2f
goto :goto_b
:catch_28
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_2f
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
.registers 12
const/4 v1, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->d:Ljava/lang/reflect/Method;
if-nez v0, :cond_6
:goto_5
:cond_5
return-void
:cond_6
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->a:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5
const/4 v0, 0x1
:try_start_f
new-array v3, v0, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
move v2, v1
:goto_17
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/Protocol;
iget-object v0, v0, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->e()I
move-result v0
add-int/lit8 v0, v0, 0x1
add-int/2addr v0, v2
move v2, v0
goto :goto_17
:cond_2e
new-array v2, v2, [B
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_34
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_59
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/Protocol;
iget-object v6, v0, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;
invoke-virtual {v6}, Lcom/squareup/okhttp/internal/a/d;->e()I
move-result v6
add-int/lit8 v7, v1, 0x1
int-to-byte v8, v6
aput-byte v8, v2, v1
iget-object v0, v0, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->f()[B
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int v0, v7, v6
move v1, v0
goto :goto_34
:cond_59
aput-object v2, v3, v4
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->d:Ljava/lang/reflect/Method;
invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_60
.catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_60} :catch_61
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_60} :catch_68
goto :goto_5
:catch_61
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:catch_68
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final b(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/internal/a/d;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->e:Ljava/lang/reflect/Method;
if-nez v0, :cond_7
move-object v0, v1
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->a:Ljava/lang/Class;
invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_11
move-object v0, v1
goto :goto_6
:cond_11
:try_start_11
iget-object v0, p0, Lcom/squareup/okhttp/internal/l;->e:Ljava/lang/reflect/Method;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
if-nez v0, :cond_20
move-object v0, v1
goto :goto_6
:cond_20
invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a([B)Lcom/squareup/okhttp/internal/a/d;
:try_end_23
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_23} :catch_25
.catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_23} :catch_2c
move-result-object v0
goto :goto_6
:catch_25
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_2c
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method
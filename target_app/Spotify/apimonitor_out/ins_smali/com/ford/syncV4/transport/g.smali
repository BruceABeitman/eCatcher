.class final Lcom/ford/syncV4/transport/g;
.super Ljava/lang/Thread;
.source "SourceFile"
.field  a:S
.field private b:Ljava/lang/Boolean;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/ford/syncV4/transport/g;->b:Ljava/lang/Boolean;
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/ford/syncV4/transport/g;-><init>()V
return-void
.end method
.method private a()Z
.registers 5
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
const/16 v2, 0x1d32
iput-short v2, p0, Lcom/ford/syncV4/transport/g;->a:S
:cond_9
:goto_9
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-nez v2, :cond_3a
:try_start_f
new-instance v2, Ljava/net/ServerSocket;
iget-short v3, p0, Lcom/ford/syncV4/transport/g;->a:S
invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V
invoke-static {v2}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_1d
.catch Ljava/net/BindException; {:try_start_f .. :try_end_1d} :catch_1f
.catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_37
move-result-object v0
goto :goto_9
:catch_1f
move-exception v2
iget-short v2, p0, Lcom/ford/syncV4/transport/g;->a:S
add-int/lit8 v2, v2, 0x1
int-to-short v2, v2
iput-short v2, p0, Lcom/ford/syncV4/transport/g;->a:S
iget-short v2, p0, Lcom/ford/syncV4/transport/g;->a:S
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->b()Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
add-int/lit16 v3, v3, 0x1d32
if-le v2, v3, :cond_9
move v0, v1
:goto_36
return v0
:catch_37
move-exception v0
move v0, v1
goto :goto_36
:cond_3a
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_36
.end method
.method public final run()V
.registers 5
const/4 v3, 0x0
:try_start_1
invoke-direct {p0}, Lcom/ford/syncV4/transport/g;->a()Z
move-result v0
if-eqz v0, :cond_78
:goto_7
:cond_7
iget-object v0, p0, Lcom/ford/syncV4/transport/g;->b:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_78
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->c()Ljava/net/ServerSocket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->accept(Ljava/net/ServerSocket;)Ljava/net/Socket;
move-result-object v0
iget-object v1, p0, Lcom/ford/syncV4/transport/g;->b:Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-nez v1, :cond_7
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->d()Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_end_24
.catchall {:try_start_1 .. :try_end_24} :catchall_89
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_66
:try_start_24
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->e()Ljava/io/OutputStream;
:try_end_27
.catchall {:try_start_24 .. :try_end_27} :catchall_63
move-result-object v2
if-eqz v2, :cond_35
:try_start_2a
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->e()Ljava/io/OutputStream;
move-result-object v2
invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
:goto_31
:try_end_31
.catchall {:try_start_2a .. :try_end_31} :catchall_63
.catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_a3
const/4 v2, 0x0
:try_start_32
invoke-static {v2}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
:cond_35
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->f()Ljava/net/Socket;
:try_end_38
.catchall {:try_start_32 .. :try_end_38} :catchall_63
move-result-object v2
if-eqz v2, :cond_46
:try_start_3b
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->f()Ljava/net/Socket;
move-result-object v2
invoke-static {v2}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_42
.catchall {:try_start_3b .. :try_end_42} :catchall_63
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_42} :catch_a1
:goto_42
const/4 v2, 0x0
:try_start_43
invoke-static {v2}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/net/Socket;)Ljava/net/Socket;
:cond_46
invoke-static {v0}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/net/Socket;)Ljava/net/Socket;
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->f()Ljava/net/Socket;
move-result-object v0
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/net/Socket;->setKeepAlive(Z)V
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->f()Ljava/net/Socket;
move-result-object v0
invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
invoke-static {v0}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
const-string v0, "Siphon connected."
invoke-static {v0}, Lcom/ford/syncV4/util/c;->b(Ljava/lang/String;)V
monitor-exit v1
:try_end_62
.catchall {:try_start_43 .. :try_end_62} :catchall_63
goto :goto_7
:catchall_63
move-exception v0
:try_start_64
monitor-exit v1
throw v0
:try_end_66
.catchall {:try_start_64 .. :try_end_66} :catchall_89
.catch Ljava/lang/Exception; {:try_start_64 .. :try_end_66} :catch_66
:catch_66
move-exception v0
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->c()Ljava/net/ServerSocket;
move-result-object v0
if-eqz v0, :cond_77
:try_start_6d
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->c()Ljava/net/ServerSocket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:goto_74
:try_end_74
.catch Ljava/io/IOException; {:try_start_6d .. :try_end_74} :catch_9d
invoke-static {v3}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
:goto_77
:cond_77
return-void
:cond_78
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->c()Ljava/net/ServerSocket;
move-result-object v0
if-eqz v0, :cond_77
:try_start_7e
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->c()Ljava/net/ServerSocket;
move-result-object v0
invoke-static {v0}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_85
.catch Ljava/io/IOException; {:try_start_7e .. :try_end_85} :catch_9f
:goto_85
invoke-static {v3}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
goto :goto_77
:catchall_89
move-exception v0
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->c()Ljava/net/ServerSocket;
move-result-object v1
if-eqz v1, :cond_9a
:try_start_90
invoke-static {}, Lcom/ford/syncV4/transport/SiphonServer;->c()Ljava/net/ServerSocket;
move-result-object v1
invoke-static {v1}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_97
.catch Ljava/io/IOException; {:try_start_90 .. :try_end_97} :catch_9b
:goto_97
invoke-static {v3}, Lcom/ford/syncV4/transport/SiphonServer;->a(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
:cond_9a
throw v0
:catch_9b
move-exception v1
goto :goto_97
:catch_9d
move-exception v0
goto :goto_74
:catch_9f
move-exception v0
goto :goto_85
:catch_a1
move-exception v2
goto :goto_42
:catch_a3
move-exception v2
goto :goto_31
.end method
.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "SourceFile"
.field private connected:Z
.field private connectionListeners:Ljava/util/Vector;
.field protected debug:Z
.field private q:Ljavax/mail/EventQueue;
.field private qLock:Ljava/lang/Object;
.field protected session:Ljavax/mail/Session;
.field protected url:Ljavax/mail/URLName;
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z
iput-boolean v0, p0, Ljavax/mail/Service;->connected:Z
iput-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;
iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z
move-result v0
iput-boolean v0, p0, Ljavax/mail/Service;->debug:Z
return-void
.end method
.method private terminateQueue()V
.registers 5
iget-object v1, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;
if-eqz v0, :cond_1d
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/util/Vector;->setSize(I)V
iget-object v2, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;
new-instance v3, Ljavax/mail/Service$TerminatorEvent;
invoke-direct {v3}, Ljavax/mail/Service$TerminatorEvent;-><init>()V
invoke-virtual {v2, v3, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;
:cond_1d
monitor-exit v1
return-void
:catchall_1f
move-exception v0
monitor-exit v1
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_1f
throw v0
.end method
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
if-nez v0, :cond_c
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
:cond_c
iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized close()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
:try_end_9
.catchall {:try_start_2 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public connect()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public declared-synchronized connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.registers 20
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Ljavax/mail/Service;->isConnected()Z
move-result v1
if-eqz v1, :cond_12
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "already connected"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_f
:catchall_f
move-exception v1
monitor-exit p0
throw v1
:cond_12
const/4 v13, 0x0
const/4 v8, 0x0
const/4 v2, 0x0
const/4 v5, 0x0
:try_start_16
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
if-eqz v1, :cond_17b
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;
move-result-object v2
if-nez p1, :cond_177
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;
move-result-object v3
:goto_28
const/4 v1, -0x1
move/from16 v0, p2
if-ne v0, v1, :cond_173
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getPort()I
move-result v4
:goto_33
if-nez p3, :cond_f5
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;
move-result-object p3
if-nez p4, :cond_16d
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;
move-result-object p4
move-object/from16 v9, p4
move-object/from16 v6, p3
:goto_47
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;
move-result-object v5
:goto_4d
if-eqz v2, :cond_89
if-nez v3, :cond_6c
iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
new-instance v3, Ljava/lang/StringBuilder;
const-string v7, "mail."
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v7, ".host"
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:cond_6c
if-nez v6, :cond_89
iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "mail."
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, ".user"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
:cond_89
if-nez v3, :cond_93
iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
const-string v3, "mail.host"
invoke-virtual {v1, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:cond_93
if-nez v6, :cond_9d
iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
const-string v6, "mail.user"
invoke-virtual {v1, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;
:try_end_9c
.catchall {:try_start_16 .. :try_end_9c} :catchall_f
move-result-object v6
:cond_9d
if-nez v6, :cond_a5
:try_start_9f
const-string v1, "user.name"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
:try_end_a4
.catchall {:try_start_9f .. :try_end_a4} :catchall_f
.catch Ljava/lang/SecurityException; {:try_start_9f .. :try_end_a4} :catch_111
move-result-object v6
:goto_a5
:cond_a5
if-nez v9, :cond_168
:try_start_a7
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
if-eqz v1, :cond_168
new-instance v1, Ljavax/mail/URLName;
const/4 v7, 0x0
invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v1}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V
iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;
move-result-object v7
invoke-virtual {v1, v7}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;
move-result-object v1
if-eqz v1, :cond_131
if-nez v6, :cond_120
invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;
:try_end_c9
.catchall {:try_start_a7 .. :try_end_c9} :catchall_f
move-result-object v1
move v12, v8
move-object v11, v6
:goto_cc
const/4 v6, 0x0
:try_start_cd
invoke-virtual {p0, v3, v4, v11, v1}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
:try_end_d0
.catchall {:try_start_cd .. :try_end_d0} :catchall_f
.catch Ljavax/mail/AuthenticationFailedException; {:try_start_cd .. :try_end_d0} :catch_136
move-result v13
move-object v14, v6
:goto_d2
if-nez v13, :cond_164
:try_start_d4
invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
:try_end_d7
.catchall {:try_start_d4 .. :try_end_d7} :catchall_f
.catch Ljava/net/UnknownHostException; {:try_start_d4 .. :try_end_d7} :catch_139
move-result-object v7
:try_start_d8
:goto_d8
iget-object v6, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
const/4 v10, 0x0
move v8, v4
move-object v9, v2
invoke-virtual/range {v6 .. v11}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
move-result-object v6
if-eqz v6, :cond_164
invoke-virtual {v6}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v6}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;
move-result-object v7
invoke-virtual {p0, v3, v4, v11, v7}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
move-result v1
move-object v6, v11
:goto_f0
if-nez v1, :cond_142
if-eqz v14, :cond_13c
throw v14
:cond_f5
if-nez p4, :cond_16d
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p3
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16d
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;
move-result-object p4
move-object/from16 v9, p4
move-object/from16 v6, p3
goto/16 :goto_47
:catch_111
move-exception v1
iget-boolean v7, p0, Ljavax/mail/Service;->debug:Z
if-eqz v7, :cond_a5
iget-object v7, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
invoke-virtual {v7}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;
move-result-object v7
invoke-virtual {v1, v7}, Ljava/lang/SecurityException;->printStackTrace(Ljava/io/PrintStream;)V
goto :goto_a5
:cond_120
invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_168
invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;
move-result-object v1
move v12, v8
move-object v11, v6
goto :goto_cc
:cond_131
const/4 v1, 0x1
move v12, v1
move-object v11, v6
move-object v1, v9
goto :goto_cc
:catch_136
move-exception v6
move-object v14, v6
goto :goto_d2
:catch_139
move-exception v6
const/4 v7, 0x0
goto :goto_d8
:cond_13c
new-instance v1, Ljavax/mail/AuthenticationFailedException;
invoke-direct {v1}, Ljavax/mail/AuthenticationFailedException;-><init>()V
throw v1
:cond_142
new-instance v1, Ljavax/mail/URLName;
invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v1}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V
if-eqz v12, :cond_15a
iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;
invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;
move-result-object v2
new-instance v3, Ljavax/mail/PasswordAuthentication;
invoke-direct {v3, v6, v7}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v2, v3}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V
:cond_15a
const/4 v1, 0x1
invoke-virtual {p0, v1}, Ljavax/mail/Service;->setConnected(Z)V
const/4 v1, 0x1
invoke-virtual {p0, v1}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
:try_end_162
.catchall {:try_start_d8 .. :try_end_162} :catchall_f
monitor-exit p0
return-void
:cond_164
move-object v7, v1
move-object v6, v11
move v1, v13
goto :goto_f0
:cond_168
move v12, v8
move-object v1, v9
move-object v11, v6
goto/16 :goto_cc
:cond_16d
move-object/from16 v9, p4
move-object/from16 v6, p3
goto/16 :goto_47
:cond_173
move/from16 v4, p2
goto/16 :goto_33
:cond_177
move-object/from16 v3, p1
goto/16 :goto_28
:cond_17b
move-object/from16 v9, p4
move-object/from16 v6, p3
move/from16 v4, p2
move-object/from16 v3, p1
goto/16 :goto_4d
.end method
.method public connect(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, -0x1
invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected finalize()V
.registers 1
invoke-super {p0}, Ljava/lang/Object;->finalize()V
invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V
return-void
.end method
.method public declared-synchronized getURLName()Ljavax/mail/URLName;
.registers 8
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
if-eqz v0, :cond_36
iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_15
iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_36
:cond_15
new-instance v0, Ljavax/mail/URLName;
iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v2}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v3}, Ljavax/mail/URLName;->getPort()I
move-result v3
const/4 v4, 0x0
iget-object v5, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
invoke-virtual {v5}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_34
:try_end_34
.catchall {:try_start_1 .. :try_end_34} :catchall_39
monitor-exit p0
return-object v0
:cond_36
:try_start_36
iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
:try_end_38
.catchall {:try_start_36 .. :try_end_38} :catchall_39
goto :goto_34
:catchall_39
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized isConnected()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized notifyConnectionListeners(I)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
if-eqz v0, :cond_f
new-instance v0, Ljavax/mail/event/ConnectionEvent;
invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V
iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
:cond_f
const/4 v0, 0x3
if-ne p1, v0, :cond_15
invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V
:cond_15
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_17
monitor-exit p0
return-void
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
return v0
.end method
.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
.registers 5
iget-object v1, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;
if-nez v0, :cond_e
new-instance v0, Ljavax/mail/EventQueue;
invoke-direct {v0}, Ljavax/mail/EventQueue;-><init>()V
iput-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;
:cond_e
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_1b
invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;
invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
return-void
:catchall_1b
move-exception v0
:try_start_1c
monitor-exit v1
:try_end_1d
.catchall {:try_start_1c .. :try_end_1d} :catchall_1b
throw v0
.end method
.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
if-eqz v0, :cond_a
iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized setConnected(Z)V
.registers 3
monitor-enter p0
:try_start_1
iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized setURLName(Ljavax/mail/URLName;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method